class AddRoomIdToSchedule < ActiveRecord::Migration
  def change
    change_table :schedules do |table|
      table.integer :room_id
    end
  end
end
