class AddAttachmentTeamPhotoToTeams < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.attachment :team_photo
    end
  end

  def self.down
    remove_attachment :teams, :team_photo
  end
end
