class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.integer :number

      t.timestamps
    end
  end
end
