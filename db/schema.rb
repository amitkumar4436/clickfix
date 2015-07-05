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

ActiveRecord::Schema.define(version: 20150705143301) do

  create_table "orders", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.text     "address",      limit: 65535
    t.date     "date"
    t.string   "email",        limit: 255
    t.string   "phone_number", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id",   limit: 4
  end

  create_table "services", force: :cascade do |t|
    t.text     "name",        limit: 65535
    t.text     "description", limit: 65535
    t.string   "min_price",   limit: 255
    t.string   "max_price",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",         limit: 255
    t.string   "email",            limit: 255, null: false
    t.string   "crypted_password", limit: 255
    t.string   "salt",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
