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

ActiveRecord::Schema.define(version: 20161017044325) do

  create_table "chas", force: :cascade do |t|
    t.string   "kubun"
    t.integer  "pokedex_id"
    t.string   "name"
    t.text     "ex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "pokebuild_id"
    t.string   "pokedex_id"
    t.integer  "per_id"
    t.integer  "cha_id"
    t.integer  "wepon_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "raistags", force: :cascade do |t|
    t.string   "name"
    t.integer  "pokerais_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
