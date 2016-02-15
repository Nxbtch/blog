json.total Post.count
json.rows do
  json.array! @posts, :id, :post_title, :post_status, :comment_count, :comment_status
end
