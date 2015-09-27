class AddSeasonAndTeamToRanks < ActiveRecord::Migration
  def change
    add_reference :ranks, :season, index: true, foreign_key: true
    add_reference :ranks, :team, index: true, foreign_key: true
  end
end
