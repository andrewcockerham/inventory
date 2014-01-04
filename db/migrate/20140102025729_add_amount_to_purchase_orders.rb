class AddAmountToPurchaseOrders < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :amount, :decimal
  end
end
