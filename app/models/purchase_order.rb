class PurchaseOrder < ActiveRecord::Base

	# Validations
	validates_uniqueness_of :purchase_order_number
	# validates :purchase_order_number, presence: true

	# Associations
	has_many :quantities, dependent: :destroy
	has_many :items, :through => :quantities
	has_many :orders, dependent: :destroy
	has_many :suppliers, :through => :orders
	# has_one :supplier
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

	# Functions
	def update_qty_on_new_po(order_quantity)
		#Item.on_order_qty += order_quantity		
	end
end
