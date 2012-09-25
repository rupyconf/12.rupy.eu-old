class CreateBrInscriptions < ActiveRecord::Migration
  def change
    create_table :br_inscriptions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cpf
      t.references :city
      t.string :twitter
      t.boolean :student
      t.string :educational_institution
      t.string :company_name
      t.string :company_website
      t.string :company_position
      t.string :ruby_experience
      t.string :python_experience
      t.string :javascript_experience

      t.timestamps
    end
    add_index :br_inscriptions, :city_id
  end
end
