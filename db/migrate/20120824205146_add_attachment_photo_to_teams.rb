class AddAttachmentPhotoToTeams < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :teams, :photo
  end
end
