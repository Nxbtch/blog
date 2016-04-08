json.array!(@page_views) do |page_view|
  json.extract! page_view, :id, :ip, :user_agent, :path
  json.url page_view_url(page_view, format: :json)
end
