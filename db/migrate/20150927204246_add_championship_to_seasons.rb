class AddChampionshipToSeasons < ActiveRecord::Migration
  def change
    add_reference :seasons, :championship, index: true, foreign_key: true
  end
end
