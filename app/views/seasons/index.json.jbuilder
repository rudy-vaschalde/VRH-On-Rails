json.array!(@seasons) do |season|
  json.extract! season, :id, :name
  json.url season_url(season, format: :json)
end
