json.array!(@business_dashes) do |business_dash|
  json.extract! business_dash, :id, :title, :description, :business_id
  json.url business_dash_url(business_dash, format: :json)
end
