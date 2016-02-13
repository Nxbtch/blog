module Posts
  class CreateService < BaseService

    def execute
      @post = Post.new(params)
      @post.post_date = Date.today unless @post.post_date
      @post.post_title = 'Undefined name' unless @post.post_title
      @post.post_name = @post.post_title unless @post.post_name

      raise 'locked post must set password' if (@post.post_status == 'lock' && @post.post_password.blank? )

      @post.save!
      @post
    rescue => ex
      message = "Unable to create post #{ex.message}"
      Rails.logger.error message
      @post.errors.add(:base, message) if @post
      @post
    end
  end
end

