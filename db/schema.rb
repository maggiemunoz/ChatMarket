# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_29_093324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "swap_offers", force: :cascade do |t|
    t.string "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trade_request_id", null: false
    t.bigint "user_id"
    t.string "status"
    t.index ["trade_request_id"], name: "index_swap_offers_on_trade_request_id"
    t.index ["user_id"], name: "index_swap_offers_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "event"
    t.string "members"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "trade_requests", force: :cascade do |t|
    t.string "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "traded"
    t.index ["user_id"], name: "index_trade_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "access_token"
    t.datetime "expires_at"
    t.string "refresh_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "swap_offers", "trade_requests"
  add_foreign_key "swap_offers", "users"
  add_foreign_key "tasks", "users"
  add_foreign_key "trade_requests", "users"
end
