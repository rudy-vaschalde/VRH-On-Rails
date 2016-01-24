class AddPositionToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :position, :integer
  end
end
