class AddDetailsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :amount, :interger
    add_column :products, :image, :string
  end
end
