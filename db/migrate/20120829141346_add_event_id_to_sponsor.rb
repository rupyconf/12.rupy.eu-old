class AddEventIdToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :event_id, :integer
  end
end
