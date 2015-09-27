class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :firstName
      t.string :lastName
      t.string :surname
      t.integer :height
      t.integer :weight
      t.string :photo
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
