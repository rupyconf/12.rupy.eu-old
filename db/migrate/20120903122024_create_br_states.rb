class CreateBrStates < ActiveRecord::Migration
  def change
    create_table :br_states do |t|
      t.string :symbol
      t.string :name

      t.timestamps
    end
  end
end
