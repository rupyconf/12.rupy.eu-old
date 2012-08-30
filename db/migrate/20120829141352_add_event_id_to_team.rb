class AddEventIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :event_id, :integer
  end
end
