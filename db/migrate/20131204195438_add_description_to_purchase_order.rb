class AddDescriptionToPurchaseOrder < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :description, :string
  end
end
