class AddTeamsToGame < ActiveRecord::Migration
  def change
    add_reference :games, :home_team, references: :team, index: true, foreign_key: true
    add_reference :games, :visitor_team, references: :team, index: true, foreign_key: true
  end
end
