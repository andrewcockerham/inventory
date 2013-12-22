class Lot < ActiveRecord::Base

	# Associations
	has_one :item
end
