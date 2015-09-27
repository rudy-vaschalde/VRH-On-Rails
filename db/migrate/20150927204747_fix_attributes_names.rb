class FixAttributesNames < ActiveRecord::Migration
  def change
    rename_column :players, :firstName, :first_name
    rename_column :players, :lastName, :last_name
    rename_column :ranks, :winOT, :win_ot
    rename_column :ranks, :defeatOT, :loss_ot
    rename_column :ranks, :nul, :tie
    rename_column :ranks, :defeat, :loss
  end
end
