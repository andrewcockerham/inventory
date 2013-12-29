class Part < ActiveRecord::Base
#### This is a join table for Items and Suppliers ####

# Associations
belongs_to :item
belongs_to :supplier

end
