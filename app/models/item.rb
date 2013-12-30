class Item < ActiveRecord::Base

	has_many :quantities, dependent: :destroy
	has_many :purchase_orders, through: :quantities
	has_many :parts
	has_many :suppliers, through: :parts
	has_many :lots
end
