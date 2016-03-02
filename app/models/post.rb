require 'markdown'
class Post < ApplicationRecord
  paginates_per Settings.pagination.admin_posts

  scope :published, -> { where(post_status: :publish) }

  has_many :comments, dependent: :destroy

  before_validation :convert_markdown

  private

  def convert_markdown
    return unless self.post_markdown_changed?
    self.post_content = MarkdownConverter.parse(self.post_markdown)
  end
end
