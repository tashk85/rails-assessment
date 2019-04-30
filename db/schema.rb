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

ActiveRecord::Schema.define(version: 2019_04_30_055256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "printer_id"
    t.bigint "quote_id"
    t.boolean "status"
    t.integer "stripe_transaction_id"
    t.datetime "created_at", null: false
    t.date "completed_at"
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_jobs_on_listing_id"
    t.index ["printer_id"], name: "index_jobs_on_printer_id"
    t.index ["quote_id"], name: "index_jobs_on_quote_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "description"
    t.float "budget"
    t.date "due_date"
    t.boolean "has_job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "printers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "abn"
    t.string "printer_model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_printers_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.bigint "printer_id"
    t.bigint "listing_id"
    t.boolean "has_job"
    t.float "total_price"
    t.integer "job_size"
    t.date "turnaround_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_quotes_on_listing_id"
    t.index ["printer_id"], name: "index_quotes_on_printer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.string "postcode"
    t.integer "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jobs", "listings"
  add_foreign_key "jobs", "printers"
  add_foreign_key "jobs", "quotes"
  add_foreign_key "listings", "users"
  add_foreign_key "printers", "users"
  add_foreign_key "quotes", "listings"
  add_foreign_key "quotes", "printers"
end
