json.array!(@tokens) do |token|
  json.extract! token, :id, :name
  json.url token_url(token, format: :json)
end
