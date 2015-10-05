class AddPlayersToGoals < ActiveRecord::Migration
  def change
    add_reference :goals, :scorer, index: true
    add_reference :goals, :passer, index: true
    add_foreign_key :goals, :players, column: :scorer_id, primary_key: :id
    add_foreign_key :goals, :players, column: :passer_id, primary_key: :id

  end
end
