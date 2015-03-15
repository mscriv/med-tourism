class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :name
      t.string :invoice_number
      t.references :patient, index: true
      t.references :doctor, index: true

      t.timestamps
    end
  end
end
