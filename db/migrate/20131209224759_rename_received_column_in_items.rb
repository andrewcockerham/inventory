class RenameReceivedColumnInItems < ActiveRecord::Migration
  def change
  	rename_column :Items, :received_qty, :in_inspection_qty
  end
end
