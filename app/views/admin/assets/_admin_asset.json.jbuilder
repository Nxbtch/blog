json.extract! asset, :id, :path, :name, :created_at, :updated_at
json.url admin_asset_url(asset, format: :json)
