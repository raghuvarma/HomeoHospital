json.array!(@tokens) do |token|
  json.extract! token, :id, :name, :relation_name, :is_new_application, :application_id
  json.url token_url(token, format: :json)
end
