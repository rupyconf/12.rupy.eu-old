class AddConferredToBrInscription < ActiveRecord::Migration
  def change
    change_table :br_inscriptions do |table|
      table.boolean :conferred, :default => false
    end
    Br::Inscription.update_all(:conferred => false)
  end
end
