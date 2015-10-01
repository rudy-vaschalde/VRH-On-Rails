class AddTeamToGoals < ActiveRecord::Migration
  def change
    add_reference :goals, :team, index: true, foreign_key: true
  end
end
