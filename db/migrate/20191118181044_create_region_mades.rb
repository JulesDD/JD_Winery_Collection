class CreateRegionMades < ActiveRecord::Migration[6.0]
  def change
    create_table :region_mades do |t|
      t.string :regionMade
      t.integer :amount_from_region

      t.timestamps
    end
  end
end
