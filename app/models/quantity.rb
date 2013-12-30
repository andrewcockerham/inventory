class Quantity < ActiveRecord::Base
	#### This is a join table for PurchaseOrders and Items ####

	# Associations
	belongs_to :purchase_order
	belongs_to :item 

	accepts_nested_attributes_for :item, :reject_if => :all_blank
	accepts_nested_attributes_for :purchase_order, :reject_if => :all_blank

end
