json.total PageView.count
json.rows do
  json.array! @page_views, :id, :ip, :user_agent, :path, :created_at
end
