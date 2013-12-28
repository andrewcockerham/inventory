class RemoveSupplierFromPurchaseOrders < ActiveRecord::Migration
  def change
    remove_column :purchase_orders, :supplier, :integer
  end
end
