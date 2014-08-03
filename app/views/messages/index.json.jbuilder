json.array!(@messages) do |message|
  json.extract! message, :id, :title, :body, :posted_by, :resource_id, :resource_type
  json.url message_url(message, format: :json)
end
