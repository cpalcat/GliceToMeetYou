class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.string :cell

      t.timestamps
    end
  end
end
