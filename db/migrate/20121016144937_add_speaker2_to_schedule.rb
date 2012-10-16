class AddSpeaker2ToSchedule < ActiveRecord::Migration
  def self.up
    #remove_column :schedules, :speaker_id
    add_column :schedules, :speaker1_id, :integer
    add_column :schedules, :speaker2_id, :integer
  end

  def self.down
    add_column :schedules, :speaker_id, :integer
    remove_column :schedules, :speaker1_id
    remove_column :schedules, :speaker2_id
  end
end
