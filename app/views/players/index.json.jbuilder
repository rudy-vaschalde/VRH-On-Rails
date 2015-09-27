json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :lastName, :surname, :height, :weight, :photo, :team_id
  json.url player_url(player, format: :json)
end
