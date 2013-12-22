class DropQuantitiesTable < ActiveRecord::Migration
  def up
  	drop_table :quantities
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
