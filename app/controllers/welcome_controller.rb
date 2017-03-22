class WelcomeController < ApplicationController
  def index
    @posts = Post.published.order(post_date: :desc)
  end
end
