class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.date :Date
      t.string :purchase_order_number

      t.timestamps
    end
  end
end
