class AddInscriptionAmountToTraining < ActiveRecord::Migration
  def change
    add_column :trainings, :inscription_amount, :integer
  end
end
