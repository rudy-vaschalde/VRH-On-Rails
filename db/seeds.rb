# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 1..5 do
  Team.create!(name: "Team #{i}", city: "City #{i}")
end

Championship.create!(name: "N2")

Season.create!(name: "2015 - 2016", championship: Championship.first)
Season.create!(name: "2016 - 2017", championship: Championship.first)

Rank.create!(team: Team.first, season: Season.first, win: 5, loss: 2, tie: 0, win_ot: 1, loss_ot: 0)

puts "#{Rank.count} ranks created."
puts "#{Team.count} teams created."
