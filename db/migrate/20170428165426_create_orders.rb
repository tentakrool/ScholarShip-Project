class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.date :order_date
      t.date :shipping_date
      t.date :payment_date
      t.integer :bk_id
      t.string :bk_name
      t.integer :ntbk_id
      t.string :ntbk_name
      t.integer :bk_cart
      t.integer :book_cart
      t.integer :ntbk_cart
      t.integer :ntbk_mrp
      t.integer :bk_mrp
      t.integer :book_mrp
      t.string :book_name
      t.integer :book_id

      t.timestamps
    end
  end
end
