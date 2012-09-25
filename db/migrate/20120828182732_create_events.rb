class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.text :description
      t.string :place
      t.string :address

      t.timestamps
    end
  end
end
