class AddSupplierToPurchaseOrder < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :supplier, :string
  end
end
