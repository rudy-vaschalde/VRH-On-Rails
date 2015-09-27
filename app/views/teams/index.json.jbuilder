json.array!(@teams) do |team|
  json.extract! team, :id, :name, :city, :logo_path
  json.url team_url(team, format: :json)
end
