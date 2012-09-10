class AddTrainingIdToInscription < ActiveRecord::Migration
  def change
    add_column :br_inscriptions, :training_id, :integer
  end
end
