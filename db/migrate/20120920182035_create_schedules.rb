class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :event
      t.datetime :occur_at
      t.references :speaker
      t.string :talk
      t.text :talk_description

      t.timestamps
    end
    add_index :schedules, :event_id
    add_index :schedules, :speaker_id
  end
end
