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

ActiveRecord::Schema.define(version: 20160310154622) do

  create_table "groups", force: :cascade do |t|
    t.string   "level"
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "level"
    t.string   "notes"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["group_id"], name: "index_students_on_group_id"

  create_table "test_books", force: :cascade do |t|
    t.string   "level"
    t.string   "name"
    t.string   "year"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_deliveries", force: :cascade do |t|
    t.integer "group_id"
    t.integer "test_id"
    t.date    "test_date"
    t.string  "note"
    t.boolean "only_listening", default: false
  end

  add_index "test_deliveries", ["group_id"], name: "index_test_deliveries_on_group_id"
  add_index "test_deliveries", ["test_id"], name: "index_test_deliveries_on_test_id"

  create_table "tests", force: :cascade do |t|
    t.integer  "number"
    t.integer  "test_book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "alt_name"
  end

end
