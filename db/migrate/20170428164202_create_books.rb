class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :cart_unit
      t.integer :product_id
      t.integer :pages
      t.integer :pages
      t.integer :stock
      t.text :synopsis
      t.integer :mrp
      t.string :author
      t.string :publisher
      t.integer :rating
      t.string :genre_name
      t.integer :book_id
      t.integer :genre_id
      t.integer :discount

      t.timestamps
    end
  end
end
