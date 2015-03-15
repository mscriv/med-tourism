class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :specialty
      t.text :bio
      t.references :country, index: true

      t.timestamps
    end
  end
end
