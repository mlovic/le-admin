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

ActiveRecord::Schema.define(version: 20160228180420) do

  create_table "groups", force: :cascade do |t|
    t.string   "level"
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_tests", force: :cascade do |t|
    t.integer "group_id"
    t.integer "test_id"
    t.date    "test_date"
  end

  add_index "groups_tests", ["group_id"], name: "index_groups_tests_on_group_id"
  add_index "groups_tests", ["test_id"], name: "index_groups_tests_on_test_id"

  create_table "test_books", force: :cascade do |t|
    t.string   "level"
    t.string   "name"
    t.string   "year"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "number"
    t.integer  "test_book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "alt_name"
  end

end
