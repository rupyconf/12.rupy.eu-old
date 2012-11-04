class AddExcludedToBrInscription < ActiveRecord::Migration
  def change
    change_table :br_inscriptions do |table|
      table.boolean :excluded, :default => false
    end
    Br::Inscription.update_all(:excluded => false)
  end
end
