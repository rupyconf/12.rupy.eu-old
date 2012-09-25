class AddAttachmentPhotoToTrainings < ActiveRecord::Migration
  def self.up
    change_table :trainings do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :trainings, :photo
  end
end
