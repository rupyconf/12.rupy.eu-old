class AddEventIdToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :event_id, :integer
  end
end
