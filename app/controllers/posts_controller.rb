class PostsController < ApplicationController

  skip_before_action:verify_authenticity_token, :only => [:create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    raise ActionController::RoutingError.new('Not Found') if @post.draft?
  end

  def create
    if params[:url].present? && !Post.exists?(origin: params['url'])
      post = Post.create(origin: params['url'])
      CrawlPostJob.perform_later post.id
      head :ok
    else
      head :bad_request
    end
  end

end
