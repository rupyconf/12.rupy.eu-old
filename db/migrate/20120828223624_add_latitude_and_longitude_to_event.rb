class AddLatitudeAndLongitudeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :string
    add_column :events, :longitude, :string
  end
end
