class Post < ActiveRecord::Base
  paginates_per Settings.pagination.admin_posts

  scope :published, -> { where(post_status: :publish) }

  has_many :comments, dependent: :destroy

end
