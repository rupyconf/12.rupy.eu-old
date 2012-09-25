class AddAttachmentInstructorPhotoToTrainings < ActiveRecord::Migration
  def self.up
    change_table :trainings do |t|
      t.has_attached_file :instructor_photo
    end
  end

  def self.down
    drop_attached_file :trainings, :instructor_photo
  end
end
