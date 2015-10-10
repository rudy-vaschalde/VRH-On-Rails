class AddChampionshipToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :championship, index: true, foreign_key: true
  end
end
