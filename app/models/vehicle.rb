class Vehicle < ActiveRecord::Base
  attr_accessible :km, :make, :model, :year

  belongs_to :customer
end
