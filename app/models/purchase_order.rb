class PurchaseOrder < ActiveRecord::Base

	# Associations
	has_many :quantities
	has_many :items, :through => :quantities
	has_many :orders
	has_many :suppliers, :through => :orders
	has_one :employee
	# has_one :supplier
	# has_many :example, :through => 

	accepts_nested_attributes_for :quantities, 
										:reject_if => :all_blank,
										:allow_destroy => true
	accepts_nested_attributes_for :items
	accepts_nested_attributes_for :suppliers
	accepts_nested_attributes_for :orders, 
										:reject_if => :all_blank,
										:allow_destroy => true
end
