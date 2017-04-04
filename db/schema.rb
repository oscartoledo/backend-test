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

ActiveRecord::Schema.define(version: 20170403222819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billboards", force: :cascade do |t|
    t.datetime "show_date",                  null: false
    t.boolean  "premier",    default: false
    t.boolean  "sold_out",   default: false
    t.float    "price",                      null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "event_id"
  end

  add_index "billboards", ["event_id"], name: "index_billboards_on_event_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.string   "location",    null: false
    t.string   "picture_url", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
