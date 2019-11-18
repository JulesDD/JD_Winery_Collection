class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.decimal :pst
      t.decimal :gst
      t.decimal :qst
      t.decimal :hst

      t.timestamps
    end
  end
end
