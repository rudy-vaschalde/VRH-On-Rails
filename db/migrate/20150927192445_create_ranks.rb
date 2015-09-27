class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :win
      t.integer :defeat
      t.integer :nul
      t.integer :winOT
      t.integer :defeatOT

      t.timestamps null: false
    end
  end
end
