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

ActiveRecord::Schema.define(version: 20141219211507) do

  create_table "authentications", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "fbid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "fb_items", force: true do |t|
    t.string   "fb_id"
    t.integer  "likes_count"
    t.integer  "comments_count"
    t.text     "content",        limit: 2147483647
    t.datetime "fb_time"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item_type"
  end

  create_table "items", force: true do |t|
    t.integer  "itemizable_id"
    t.string   "itemizable_type"
    t.integer  "user_id"
    t.string   "enabled_features"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",      null: false
  end

end
