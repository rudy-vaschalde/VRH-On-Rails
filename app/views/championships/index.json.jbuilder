json.array!(@championships) do |championship|
  json.extract! championship, :id, :name
  json.url championship_url(championship, format: :json)
end
