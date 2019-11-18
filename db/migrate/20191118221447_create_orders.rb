class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.dateTime :orderDate
      t.integer :orderQuantity
      t.decimal :subTotal
      t.boolean :isDeliver
      t.decimal :deliveryFee
      t.decimal :total
      t.references :customer, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true
      t.references :taxes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
