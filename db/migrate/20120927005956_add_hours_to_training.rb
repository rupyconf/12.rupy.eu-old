class AddHoursToTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :hours, :string

  end
end
