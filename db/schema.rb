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

ActiveRecord::Schema.define(version: 2018_07_18_160624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "masters", force: :cascade do |t|
    t.string "name"
    t.bigint "pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.index ["pokemon_id"], name: "index_masters_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.text "num"
    t.text "name"
    t.text "img"
    t.text "height"
    t.text "weight"
    t.text "candy"
    t.integer "candy_count"
    t.text "egg"
    t.integer "avg_spawns"
    t.text "spawn_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "masters", "pokemons"
end
