class RemovePhotoFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :photo, :string
  end
end
