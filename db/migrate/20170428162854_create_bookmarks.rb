class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :bk_name
      t.string :size
      t.string :brand
      t.integer :product_id
      t.integer :mrp
      t.string :colour
      t.integer :stock
      t.integer :discount
      t.text :bk_description
      t.text :bk_id
      t.integer :cart_unit

      t.timestamps
    end
  end
end
