class Comment < ApplicationRecord
  belongs_to :post, counter_cache: :comment_count
end
