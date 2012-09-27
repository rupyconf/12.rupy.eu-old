class AddInstructorJobTitleToTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :instructor_job_title, :string

  end
end
