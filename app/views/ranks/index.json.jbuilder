json.array!(@ranks) do |rank|
  json.extract! rank, :id, :win, :loss, :tie, :win_ot, :loss_ot
  json.url rank_url(rank, format: :json)
end
