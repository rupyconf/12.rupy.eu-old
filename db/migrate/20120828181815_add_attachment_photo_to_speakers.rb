class AddAttachmentPhotoToSpeakers < ActiveRecord::Migration
  def self.up
    change_table :speakers do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :speakers, :photo
  end
end
