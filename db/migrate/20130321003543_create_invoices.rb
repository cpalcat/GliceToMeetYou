class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :due

      t.timestamps
    end
  end
end
