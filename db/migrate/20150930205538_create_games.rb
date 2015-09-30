class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :match_day
      t.boolean :overtime

      t.timestamps null: false
    end
  end
end
