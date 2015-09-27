json.array!(@ranks) do |rank|
  json.extract! rank, :id, :win, :defeat, :nul, :winOT, :defeatOT
  json.url rank_url(rank, format: :json)
end
