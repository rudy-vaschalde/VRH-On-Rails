class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :logo_path

      t.timestamps null: false
    end
  end
end
