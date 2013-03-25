class Customer < ActiveRecord::Base
	attr_accessible :first, :last, :phone, :cell, :vehicle_make, :vehicle_model

	has_many :vehicles
end
