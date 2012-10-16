class AddSpeaker2ToSchedule < ActiveRecord::Migration
  def change
    remove_column :schedules, :speaker_id, :integer
    add_column :schedules, :speaker1_id, :integer
    add_column :schedules, :speaker2_id, :integer
  end
end
