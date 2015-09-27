class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :win, default: 0
      t.integer :defeat, default: 0
      t.integer :nul, default: 0
      t.integer :winOT, default: 0
      t.integer :defeatOT, default: 0

      t.timestamps null: false
    end
  end
end
