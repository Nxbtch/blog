require 'markdown'

module Posts
  class UpdateService < BaseService

    attr_accessor :post

    def initialize(post, params)
      super(params)
      @post = post
    end

    def execute
      @post.update!(params)
      true
    rescue => e
      message = "Unable to update post #{e.message}"
      Rails.logger.error message
      @post.errors.add(:base, message)
      false
    end
  end
end
