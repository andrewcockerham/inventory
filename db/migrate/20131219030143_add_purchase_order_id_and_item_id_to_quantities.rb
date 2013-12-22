class AddPurchaseOrderIdAndItemIdToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :purchase_order_id, :integer
    add_index :quantities, :purchase_order_id
    add_column :quantities, :item_id, :integer
    add_index :quantities, :item_id
  end
end
