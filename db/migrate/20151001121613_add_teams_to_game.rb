class AddTeamsToGame < ActiveRecord::Migration
  def change
    add_reference :games, :home_team, index: true
    add_reference :games, :visitor_team, index: true
    add_foreign_key :games, :teams, column: :home_team_id, primary_key: :team_id
    add_foreign_key :games, :teams, column: :visitor_team_id, primary_key: :team_id
  end
end
