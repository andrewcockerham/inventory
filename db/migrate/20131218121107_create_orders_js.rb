class CreateOrdersJs < ActiveRecord::Migration
  def change
    create_table :orders_js do |t|
      t.string :name

      t.timestamps
    end
  end
end
