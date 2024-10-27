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

ActiveRecord::Schema[7.1].define(version: 2024_10_24_104833) do
  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "key_point_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_points", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practice_menus", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "practice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_id"], name: "index_practice_menus_on_practice_id"
    t.index ["user_id"], name: "index_practice_menus_on_user_id"
  end

  create_table "practice_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "practice_menu_id"
    t.datetime "date"
    t.string "goal"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string "title", null: false
    t.integer "count"
    t.datetime "practice_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "practice_menus", "practices"
  add_foreign_key "practice_menus", "users"
end
