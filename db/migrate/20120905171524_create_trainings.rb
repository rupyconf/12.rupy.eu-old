class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.references :event
      t.integer :sequence
      t.string :name
      t.text :description
      t.string :instructor_name
      t.text :instructor_description
      t.text :summary
      t.text :payment_method

      t.timestamps
    end
    add_index :trainings, :event_id
  end
end
