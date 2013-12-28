class Order < ActiveRecord::Base

	# Associations
	belongs_to :purchase_order
	belongs_to :supplier

	accepts_nested_attributes_for :supplier, :reject_if => :all_blank
end
