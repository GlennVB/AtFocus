json.array!(@postal_addresses) do |postal_address|
  json.extract! postal_address, :id, :addressCountry, :addressLocality, :addressRegion, :postalCode, :streetAddress
  json.url postal_address_url(postal_address, format: :json)
end
