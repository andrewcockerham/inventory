class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.date :start_date
      t.integer :start_qty
      t.integer :yield_qty

      t.timestamps
    end
  end
end
