class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :designation
      t.text :description
      t.decimal :price
      t.date :stockDate
      t.references :regionMade
      t.references :provinceMade
      t.references :countryMade
      t.references :winery
      t.references :variety, null: false, foreign_key: true

      t.timestamps
    end
  end
end
