class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    raise ActionController::RoutingError.new('Not Found') if @post.draft?
  end

end
