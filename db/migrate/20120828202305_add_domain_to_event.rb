class AddDomainToEvent < ActiveRecord::Migration
  def change
    add_column :events, :domain, :string
  end
end
