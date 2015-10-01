for i in 1..5 do
  Team.create!(name: "Team #{i}", city: "City #{i}")
end

Championship.create!(name: "National 2")
Championship.create!(name: "National 4")

Season.create!(name: "2014 - 2015", championship: Championship.first)
Season.create!(name: "2015 - 2016", championship: Championship.first)

Rank.create!(team: Team.first, season: Season.last, win: 5, loss: 2, tie: 0, win_ot: 1, loss_ot: 0)
Rank.create!(team: Team.second, season: Season.last, win: 0, loss: 7, tie: 0, win_ot: 1, loss_ot: 1)
Rank.create!(team: Team.third, season: Season.last, win: 8, loss: 0, tie: 0, win_ot: 0, loss_ot: 0)
Rank.create!(team: Team.fourth, season: Season.last, win: 2, loss: 4, tie: 0, win_ot: 1, loss_ot: 1)

Game.create!(match_day: Time.new(2014,1,1) , home_team: Team.first, visitor_team: Team.second)
Game.create!(match_day: Time.new(2014,2,1) , home_team: Team.first, visitor_team: Team.third)

puts "#{Championship.count} championships created."
puts "#{Season.count} seasons created."
puts "#{Rank.count} ranks created."
puts "#{Team.count} teams created."
puts "#{Game.count} games created."
