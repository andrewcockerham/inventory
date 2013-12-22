class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :PurchaseOrders, :Items do |t|
      t.index [:purchase_order_id, :item_id]
      t.index [:item_id, :purchase_order_id]
    end
  end
end
