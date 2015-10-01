class AddPlayersToGoals < ActiveRecord::Migration
  def change
    add_reference :goals, :scorer, references: :player, index: true, foreign_key: true
    add_reference :goals, :passer, references: :player, index: true, foreign_key: true
  end
end
