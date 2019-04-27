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

ActiveRecord::Schema.define(version: 2019_03_27_174424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.string "prompt"
    t.string "choiceA"
    t.string "choiceB"
    t.integer "turn"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "route"
    t.string "from"
    t.string "robotpath"
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.boolean "hear"
    t.boolean "see"
    t.boolean "arms"
    t.boolean "speed"
    t.boolean "wheels"
    t.boolean "jump"
    t.boolean "doors"
    t.boolean "stairs"
    t.boolean "talk"
    t.boolean "laser"
    t.boolean "heat"
    t.boolean "gas"
    t.string "robothead"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
