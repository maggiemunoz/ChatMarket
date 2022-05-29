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

ActiveRecord::Schema.define(version: 2022_05_29_011430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "swap_offers", force: :cascade do |t|
    t.string "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trade_request_id", null: false
    t.index ["trade_request_id"], name: "index_swap_offers_on_trade_request_id"
  end

  create_table "trade_requests", force: :cascade do |t|
    t.string "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "swap_offers", "trade_requests"
end
