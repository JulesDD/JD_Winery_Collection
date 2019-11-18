class CreateCountryMades < ActiveRecord::Migration[6.0]
  def change
    create_table :country_mades do |t|
      t.string :countryMade
      t.integer :amount_from_country

      t.timestamps
    end
  end
end
