class Quantity < ActiveRecord::Base

	# Associations
	belongs_to :purchase_order
	belongs_to :item 

	accepts_nested_attributes_for :item, :reject_if => :all_blank
end
