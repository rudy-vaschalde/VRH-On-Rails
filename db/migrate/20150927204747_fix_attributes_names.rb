class FixAttributesNames < ActiveRecord::Migration
  def change
    rename_column :players, :firstName, :first_name
    rename_column :players, :lastName, :last_name
    rename_column :ranks, :winOT, :win_ot
    rename_column :ranks, :defeatOT, :defeat_ot
    rename_column :ranks, :nul, :tie
  end
end
