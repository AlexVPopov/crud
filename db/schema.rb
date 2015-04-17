# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150417145015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "model",      limit: 255
    t.integer  "year"
    t.integer  "kilometers"
    t.string   "color",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brand",      limit: 255
    t.integer  "ages",                   default: [], array: true
  end

  add_index "cars", ["ages"], name: "index_cars_on_ages", using: :gin

  create_table "drivers", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "driving_style_id"
  end

  add_index "drivers", ["driving_style_id"], name: "index_drivers_on_driving_style_id", using: :btree

  create_table "driving_styles", force: :cascade do |t|
    t.string   "style_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255, null: false
    t.integer  "item_id",                null: false
    t.string   "event",      limit: 255, null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
