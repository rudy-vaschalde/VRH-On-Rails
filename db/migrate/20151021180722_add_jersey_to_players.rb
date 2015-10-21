class AddJerseyToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :jersey, :integer
  end
end
