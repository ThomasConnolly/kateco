json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :phone, :note_id, :supplier_id, :client_id, :supplier_id
  json.url contact_url(contact, format: :json)
end
