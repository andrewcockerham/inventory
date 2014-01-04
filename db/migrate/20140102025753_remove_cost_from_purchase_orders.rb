class RemoveCostFromPurchaseOrders < ActiveRecord::Migration
  def change
    remove_column :purchase_orders, :cost, :decimal
  end
end
