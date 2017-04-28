class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.integer :genre_id
      t.string :genre_name
      t.text :description

      t.timestamps
    end
  end
end
