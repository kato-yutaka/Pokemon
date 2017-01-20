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

ActiveRecord::Schema.define(version: 20170113021144) do

  create_table "buildchecktags", force: :cascade do |t|
    t.integer  "pokebuild_id"
    t.integer  "buildtag_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "buildskills", force: :cascade do |t|
    t.integer  "party_id"
    t.string   "name"
    t.integer  "power"
    t.string   "eff"
    t.integer  "skillname_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "buildtags", force: :cascade do |t|
    t.string   "name"
    t.integer  "pokebuild_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cha1s", force: :cascade do |t|
    t.integer  "cha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cha2s", force: :cascade do |t|
    t.integer  "cha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cha3s", force: :cascade do |t|
    t.integer  "cha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chas", force: :cascade do |t|
    t.string   "kubun"
    t.integer  "pokedex_id"
    t.string   "name"
    t.text     "ex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coms", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.text     "com"
    t.integer  "pokerai_id"
    t.integer  "pokebuild_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "eggs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "filename"
    t.binary   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.integer  "pokebuild_id"
    t.integer  "pokedex_id"
    t.integer  "per_id"
    t.integer  "cha_id"
    t.integer  "wepon_id"
    t.integer  "hp"
    t.integer  "atk"
    t.integer  "def"
    t.integer  "satk"
    t.integer  "sdef"
    t.integer  "spd"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pers", force: :cascade do |t|
    t.string   "name"
    t.string   "up"
    t.string   "down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokebuilds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "buildchecktag_id"
    t.text     "ex"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pokedexes", force: :cascade do |t|
    t.string   "name"
    t.integer  "hp"
    t.integer  "atk"
    t.integer  "def"
    t.integer  "satk"
    t.integer  "sdef"
    t.integer  "spd"
    t.text     "eco"
    t.integer  "egg_id"
    t.integer  "type_id"
    t.string   "pic"
    t.binary   "pic_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "cha1"
    t.string   "cha2"
    t.integer  "cha3"
  end

  create_table "pokerais", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "pokedex_id"
    t.integer  "per_id"
    t.integer  "cha_id"
    t.integer  "wepon_id"
    t.integer  "raistag_id"
    t.text     "ex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "hp"
    t.integer  "atk"
    t.integer  "def"
    t.integer  "satk"
    t.integer  "sdef"
    t.integer  "spd"
    t.binary   "pic_data"
    t.integer  "sum"
  end

  create_table "raischecktags", force: :cascade do |t|
    t.integer  "pokerai_id"
    t.integer  "raistag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raistags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillnames", force: :cascade do |t|
    t.string   "name"
    t.integer  "power"
    t.text     "eff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.string   "category"
    t.integer  "hit"
    t.integer  "pp"
    t.string   "direct"
    t.string   "target"
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "pokerai_id"
    t.string   "name"
    t.integer  "power"
    t.string   "eff"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "skillname_id"
  end

  create_table "tops", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userinfos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "pic"
    t.binary   "pic_data"
    t.string   "password"
    t.string   "email"
    t.text     "info"
    t.string   "profile"
    t.boolean  "ad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "wepons", force: :cascade do |t|
    t.string   "name"
    t.text     "eff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "get"
  end

end
