class AddLocaleToEvent < ActiveRecord::Migration
  def change
    add_column :events, :locale, :string
  end
end
