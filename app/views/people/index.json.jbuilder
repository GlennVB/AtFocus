json.array!(@people) do |person|
  json.extract! person, :id, :givenName, :familyName, :additionalName, :address, :birthDate, :email, :faxNumber, :gender, :honorificPrefix, :honorificSuffic, :nationality, :telephone
  json.url person_url(person, format: :json)
end
