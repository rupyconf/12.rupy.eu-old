class AddSocialLinksToTraining < ActiveRecord::Migration
  def change
  	add_column :trainings, :instructor_profile, :string
  	add_column :trainings, :instructor_twitter, :string
  	add_column :trainings, :instructor_website, :string
  end
end
