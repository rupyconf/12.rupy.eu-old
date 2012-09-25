class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.integer :sequence
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
