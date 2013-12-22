class Item < ActiveRecord::Base

	has_many :quantities
	has_many :purchase_orders, through: :quantities
end
