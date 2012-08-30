class AddAttachmentLogoToSponsors < ActiveRecord::Migration
  def self.up
    change_table :sponsors do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :sponsors, :logo
  end
end
