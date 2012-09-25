class AddEventIdToInscription < ActiveRecord::Migration
  def change
    add_column :br_inscriptions, :event_id, :integer
  end
end
