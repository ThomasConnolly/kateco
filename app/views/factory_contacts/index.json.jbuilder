json.array!(@factory_contacts) do |factory_contact|
  json.extract! factory_contact, :id
  json.url factory_contact_url(factory_contact, format: :json)
end
