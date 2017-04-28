class CreateNotebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notebooks do |t|
      t.integer :ntbk_id
      t.integer :pages
      t.text :ntbk_description
      t.string :ntbk_name
      t.string :brand
      t.integer :product_id
      t.text :colour
      t.integer :stock
      t.integer :mrp
      t.integer :cart_unit
      t.integer :discount

      t.timestamps
    end
  end
end
