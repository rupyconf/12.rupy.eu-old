class CreateSponsorTypes < ActiveRecord::Migration
  def change
    create_table :sponsor_types do |t|
      t.integer :sequence
      t.string :description

      t.timestamps
    end

    SponsorType.create!(:sequence => 1, :description => "DIAMOND")
    SponsorType.create!(:sequence => 2, :description => "GOLD")
    SponsorType.create!(:sequence => 3, :description => "SILVER")
    SponsorType.create!(:sequence => 4, :description => "BRONZE")
    SponsorType.create!(:sequence => 5, :description => "SUPPORT")
    SponsorType.create!(:sequence => 6, :description => "MEDIA")
  end
end
