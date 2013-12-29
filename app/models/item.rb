class Item < ActiveRecord::Base

	has_many :quantities
	has_many :purchase_orders, through: :quantities
	has_many :parts
	has_many :suppliers, through: :parts
end
