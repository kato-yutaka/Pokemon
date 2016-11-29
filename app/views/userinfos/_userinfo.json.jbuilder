json.extract! userinfo, :id, :created_at, :updated_at
json.url userinfo_url(userinfo, format: :json)