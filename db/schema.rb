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

ActiveRecord::Schema.define(version: 20150206035355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "bandname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", force: :cascade do |t|
    t.integer  "venue_id"
    t.datetime "concert_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "band_id"
  end

  add_index "concerts", ["venue_id"], name: "index_concerts_on_venue_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "venuename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
