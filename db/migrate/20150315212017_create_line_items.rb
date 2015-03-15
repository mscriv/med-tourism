class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
