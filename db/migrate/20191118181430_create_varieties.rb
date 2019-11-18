class CreateVarieties < ActiveRecord::Migration[6.0]
  def change
    create_table :varieties do |t|
      t.string :variety_name
      t.integer :amount_of_variety

      t.timestamps
    end
  end
end
