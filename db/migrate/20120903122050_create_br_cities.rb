class CreateBrCities < ActiveRecord::Migration
  def change
    create_table :br_cities do |t|
      t.string :name
      t.references :state

      t.timestamps
    end
    add_index :br_cities, :state_id
  end
end
