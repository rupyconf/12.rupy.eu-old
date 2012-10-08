class AddGithubAndWebsiteToSpeaker < ActiveRecord::Migration
  def change
    change_table :speakers do |table|
      table.string :github
      table.string :website
    end
  end
end