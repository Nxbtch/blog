class Admin::PostsController < Admin::ApplicationController
  before_action :find_post, only: [:edit, :update, :destroy]

  def index
    limit = params[:limit] || Settings.pagination.admin_posts
    offset = params[:offset] || 0
    order = params[:order] || :asc
    order_column = params[:sort] || :id
    @posts = Post.order("#{order_column} #{order}").limit(limit).offset(offset)
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = ::Posts::CreateService.new(post_params).execute

    if @post.persisted?
      flash[:notice] = "Post created successfully"
    end

  end

  def update
    status = ::Posts::UpdateService.new(@post, post_params).execute

    if status
      flash[:notice] = "Post #{@post.post_title} updated successfully"
    end

  end

  def destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:post_title,
                                 :post_markdown,
                                 :post_date,
                                 :post_password,
                                 :post_status,
                                 :post_name,
                                 :post_parent,
                                 :comment_status
                                )
  end
end
