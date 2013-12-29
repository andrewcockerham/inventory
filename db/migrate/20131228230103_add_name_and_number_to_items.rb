class AddNameAndNumberToItems < ActiveRecord::Migration
  def change
    add_column :items, :name_and_number, :string
  end
end
