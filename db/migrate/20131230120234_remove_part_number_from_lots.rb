class RemovePartNumberFromLots < ActiveRecord::Migration
  def change
  	remove_column :lots, :part_number, :string
  end
end
