class RemoveAmountFromPurchaseOrders < ActiveRecord::Migration
  def change
    remove_column :purchase_orders, :amount, :decimal
  end
end
