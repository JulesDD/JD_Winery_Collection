class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :fullName
      t.string :emailAddress
      t.integer :contactNumber
      t.string :streetAddress
      t.string :province
      t.string :postalCode
      t.string :username
      t.sting :password
      t.references :taxes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
