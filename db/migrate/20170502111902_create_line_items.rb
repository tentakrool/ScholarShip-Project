class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :bookmark_id
      t.integer :notebook_id
      t.integer :book_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
