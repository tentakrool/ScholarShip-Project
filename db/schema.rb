# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170502111902) do

  create_table "bookmarks", force: :cascade do |t|
    t.string   "bk_name"
    t.string   "size"
    t.string   "brand"
    t.integer  "product_id"
    t.integer  "mrp"
    t.string   "colour"
    t.integer  "stock"
    t.integer  "discount"
    t.text     "bk_description"
    t.text     "bk_id"
    t.integer  "cart_unit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "book_name"
    t.integer  "cart_unit"
    t.integer  "product_id"
    t.integer  "pages"
    t.integer  "stock"
    t.text     "synopsis"
    t.integer  "mrp"
    t.string   "author"
    t.string   "publisher"
    t.integer  "rating"
    t.string   "genre_name"
    t.integer  "book_id"
    t.integer  "genre_id"
    t.integer  "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.integer  "genre_id"
    t.string   "genre_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "bookmark_id"
    t.integer  "notebook_id"
    t.integer  "book_id"
    t.integer  "cart_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notebooks", force: :cascade do |t|
    t.integer  "ntbk_id"
    t.integer  "pages"
    t.text     "ntbk_description"
    t.string   "ntbk_name"
    t.string   "brand"
    t.integer  "product_id"
    t.text     "colour"
    t.integer  "stock"
    t.integer  "mrp"
    t.integer  "cart_unit"
    t.integer  "discount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "order_id"
    t.date     "order_date"
    t.date     "shipping_date"
    t.date     "payment_date"
    t.integer  "bk_id"
    t.string   "bk_name"
    t.integer  "ntbk_id"
    t.string   "ntbk_name"
    t.integer  "bk_cart"
    t.integer  "book_cart"
    t.integer  "ntbk_cart"
    t.integer  "ntbk_mrp"
    t.integer  "bk_mrp"
    t.integer  "book_mrp"
    t.string   "book_name"
    t.integer  "book_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "product_name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "review_id"
    t.integer  "ntbk_id"
    t.integer  "bk_id"
    t.integer  "customer_id"
    t.integer  "rating"
    t.text     "content"
    t.date     "date_written"
    t.integer  "book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
