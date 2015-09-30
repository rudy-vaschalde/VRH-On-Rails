json.array!(@assists) do |assist|
  json.extract! assist, :id, :goal_id, :player_id
  json.url assist_url(assist, format: :json)
end
