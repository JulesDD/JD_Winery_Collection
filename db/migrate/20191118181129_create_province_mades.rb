class CreateProvinceMades < ActiveRecord::Migration[6.0]
  def change
    create_table :province_mades do |t|
      t.string :provinceMade
      t.integer :amount_from_province

      t.timestamps
    end
  end
end
