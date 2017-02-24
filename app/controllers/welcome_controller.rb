class WelcomeController < ApplicationController
  def index
    @posts = Post.published.order(post_date: :desc).page params[:page]
  end
end
