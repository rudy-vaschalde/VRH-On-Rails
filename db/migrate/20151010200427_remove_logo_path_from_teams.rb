class RemoveLogoPathFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :logo_path, :string
  end
end
