class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :paymentNo
      t.string :paymentType
      t.datetime :date
      t.integer :amount

      t.timestamps
    end
  end
end
