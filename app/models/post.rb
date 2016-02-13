class Post < ActiveRecord::Base
  paginates_per Settings.pagination.admin_posts
end
