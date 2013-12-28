class Supplier < ActiveRecord::Base

	# Associations
	# belongs_to :PurchaseOrder
	has_many :orders
	has_many :purchase_orders, :through => :orders
end
