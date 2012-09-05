class AddInscriptionPhotoAndDescriptionToEvent < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.has_attached_file :inscription_photo
    end
    add_column :events, :inscription_description, :text
    add_column :events, :inscription_value, :float
  end

  def self.down
    drop_attached_file :events, :inscription_photo
    remove_column :events, :inscription_description
    remove_column :events, :inscription_value
  end
end
