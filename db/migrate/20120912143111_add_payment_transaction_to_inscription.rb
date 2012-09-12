class AddPaymentTransactionToInscription < ActiveRecord::Migration
  def change
    add_column :br_inscriptions, :payment_transaction, :string
  end
end
