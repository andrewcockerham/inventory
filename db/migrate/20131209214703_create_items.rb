class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :part_number
      t.string :name
      t.integer :on_order_qty
      t.integer :received_qty
      t.integer :stock_qty
      t.integer :ncmr_qty

      t.timestamps
    end
    add_index :items, :part_number
    add_index :items, :name
  end
end
