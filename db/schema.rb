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

ActiveRecord::Schema.define(version: 2020_06_09_222251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "online_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kookies", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "value"
    t.string "path"
    t.string "domain"
    t.string "secure"
    t.string "httponly"
    t.datetime "expiry"
    t.datetime "seen_date"
    t.bigint "description_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "website_id", null: false
    t.index ["description_id"], name: "index_kookies_on_description_id"
    t.index ["website_id"], name: "index_kookies_on_website_id"
  end

  create_table "websites", force: :cascade do |t|
    t.string "url"
    t.integer "scan_schedule"
    t.integer "weekly_scan_day"
    t.datetime "added_date"
    t.datetime "last_scanned"
    t.integer "customer_id"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "kookies", "descriptions"
  add_foreign_key "kookies", "websites"
end
