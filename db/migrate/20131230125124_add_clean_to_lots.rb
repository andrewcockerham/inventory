class AddCleanToLots < ActiveRecord::Migration
  def change
    add_column :lots, :cleaned, :boolean
  end
end
