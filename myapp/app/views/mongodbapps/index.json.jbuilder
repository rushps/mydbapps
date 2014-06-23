json.array!(@mongodbapps) do |mongodbapp|
  json.extract! mongodbapp, :id, :people, :keyw
  json.url mongodbapp_url(mongodbapp, format: :json)
end
