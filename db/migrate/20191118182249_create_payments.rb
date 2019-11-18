class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.int :paymentNo
      t.string :paymentType
      t.dateTime :date
      t.integer :amount

      t.timestamps
    end
  end
end
