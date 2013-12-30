class Supplier < ActiveRecord::Base

	# Associations
	# belongs_to :PurchaseOrder
	has_many :orders, dependent: :destroy
	has_many :purchase_orders, :through => :orders
	has_many :parts
	has_many :items, :through => :parts
end
