class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :review_id
      t.integer :ntbk_id
      t.integer :bk_id
      t.integer :customer_id
      t.integer :rating
      t.text :content
      t.date :date_written
      t.integer :book_id

      t.timestamps
    end
  end
end
