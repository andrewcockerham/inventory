class Employee < ActiveRecord::Base

	# Associations
	belongs_to :PurchaseOrder
end
