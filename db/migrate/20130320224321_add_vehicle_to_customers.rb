class AddVehicleToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :vehicle, :string
  end
end
