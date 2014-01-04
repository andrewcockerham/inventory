class RenameAmountInQuantities < ActiveRecord::Migration
  def change
  	rename_column :quantities, :amount, :count
  end
end
