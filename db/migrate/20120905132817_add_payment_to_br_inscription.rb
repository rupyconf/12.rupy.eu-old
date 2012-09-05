class AddPaymentToBrInscription < ActiveRecord::Migration
  def change
    add_column :br_inscriptions, :payment_token, :string
    add_column :br_inscriptions, :payment_status, :string
    add_column :br_inscriptions, :payment_method, :string
    add_column :br_inscriptions, :payment_processed_at, :datetime
  end
end
