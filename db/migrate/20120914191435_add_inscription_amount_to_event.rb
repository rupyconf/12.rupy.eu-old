class AddInscriptionAmountToEvent < ActiveRecord::Migration
  def change
    add_column :events, :inscription_amount, :integer
  end
end
