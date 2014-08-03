json.array!(@businesses) do |business|
  json.extract! business, :id, :legalName, :address, :email, :faxnumber, :telephone, :taxId, :businessCategory, :faxNumber
  json.url business_url(business, format: :json)
end
