# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_23_215842) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "console_collections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "console_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consoles", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "upc"
    t.string "condition"
    t.string "product_family"
    t.integer "release_year"
    t.boolean "trade"
    t.integer "rating"
    t.string "value"
    t.string "storage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "model"
  end

  create_table "game_collections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "upc"
    t.string "condition"
    t.string "publisher"
    t.string "developer"
    t.string "platform"
    t.integer "release_year"
    t.boolean "trade"
    t.integer "rating"
    t.string "value"
    t.boolean "co_op"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.boolean "dark_mode"
    t.boolean "online_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
