class Admin::WelcomeController < Admin::ApplicationController
  def index
  end

  def urls
    @posts = Post.where.not(origin: nil).order(created_at: :desc)
  end
end
