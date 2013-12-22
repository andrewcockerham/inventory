class AddPartNumberToLot < ActiveRecord::Migration
  def change
    add_column :lots, :part_number, :string
  end
end
