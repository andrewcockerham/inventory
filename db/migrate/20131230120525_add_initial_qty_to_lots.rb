class AddInitialQtyToLots < ActiveRecord::Migration
  def change
    add_column :lots, :initial_qty, :integer
    add_column :lots, :current_qty, :integer
  end
end
