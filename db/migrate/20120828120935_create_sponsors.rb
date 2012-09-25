class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.references :sponsor_type
      t.integer :sequence
      t.string :name
      t.text :description
      t.string :website

      t.timestamps
    end
    add_index :sponsors, :sponsor_type_id
  end
end
