class CreateAssists < ActiveRecord::Migration
  def change
    create_table :assists do |t|
      t.references :goal, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
