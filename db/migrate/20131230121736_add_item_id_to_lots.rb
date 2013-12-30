class AddItemIdToLots < ActiveRecord::Migration
  def change
    add_column :lots, :item_id, :integer
  end
end
