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

ActiveRecord::Schema.define(version: 20170723150540) do

  create_table "experiments", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.string   "field"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_experiments", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "experiments_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "user_experiments", ["experiments_id"], name: "index_user_experiments_on_experiments_id"
  add_index "user_experiments", ["users_id"], name: "index_user_experiments_on_users_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "institution"
    t.integer  "orcid_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
