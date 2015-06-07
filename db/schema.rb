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

ActiveRecord::Schema.define(version: 20150607002548) do

  create_table "houseguests", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "age"
    t.string   "occupation"
    t.integer  "season_id"
    t.integer  "placed"
    t.integer  "votes_against"
    t.integer  "votes_to_win"
    t.text     "hoh"
    t.text     "nominated"
    t.text     "veto"
    t.text     "botb"
    t.text     "have_not"
    t.integer  "first_day"
    t.integer  "last_day"
    t.text     "prizes"
    t.boolean  "jury"
    t.boolean  "expelled"
    t.boolean  "walked"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "year"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
