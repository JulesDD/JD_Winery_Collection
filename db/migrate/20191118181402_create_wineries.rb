class CreateWineries < ActiveRecord::Migration[6.0]
  def change
    create_table :wineries do |t|
      t.string :winery_name
      t.integer :amount_from_winery

      t.timestamps
    end
  end
end
