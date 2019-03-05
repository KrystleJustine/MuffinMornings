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

ActiveRecord::Schema.define(version: 2019_03_04_221614) do

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "muffin_types", force: :cascade do |t|
    t.string "calories"
    t.string "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_days", force: :cascade do |t|
    t.integer "day_id_id"
    t.integer "order_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id_id"], name: "index_order_days_on_day_id_id"
    t.index ["order_id_id"], name: "index_order_days_on_order_id_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "muffin_type_id"
    t.text "review"
    t.integer "stars"
    t.string "muffin_url"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muffin_type_id"], name: "index_orders_on_muffin_type_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
