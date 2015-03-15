class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.references :doctor, index: true

      t.timestamps
    end
  end
end
