json.array!(@applications) do |application|
  json.extract! application, :id, :name, :relation_name, :address, :details, :is_doctor
  json.url application_url(application, format: :json)
end
