class Invoice < ActiveRecord::Base
  attr_accessible :due, :subtotal, :tax
end
