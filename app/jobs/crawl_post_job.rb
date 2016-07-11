require 'crawler'

class CrawlPostJob < ActiveJob::Base
  queue_as :default

  def perform(post_id)
    post = Post.find(post_id)

    crawler = Crawler.new post.origin

    post.post_title = crawler.title
    post.post_author  = :bot
    post.post_date = DateTime.now

    post.save!
  end

end
