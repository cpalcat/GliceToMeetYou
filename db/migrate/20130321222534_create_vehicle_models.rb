class CreateVehicleModels < ActiveRecord::Migration
  def change
    create_table :vehicle_models do |t|
      t.string :model
      t.string :make_id

      t.timestamps
    end
  end
end
