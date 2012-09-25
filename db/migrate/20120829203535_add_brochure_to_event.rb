class AddBrochureToEvent < ActiveRecord::Migration
  def change
    add_column :events, :brochure, :string
  end
end
