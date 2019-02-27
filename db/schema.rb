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

ActiveRecord::Schema.define(version: 2019_02_27_201744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.datetime "start"
    t.datetime "end"
    t.integer "dollar_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temptations", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "Sunday"
    t.boolean "Monday"
    t.boolean "Tuesday"
    t.boolean "Wednesday"
    t.boolean "Thursday"
    t.boolean "Friday"
    t.boolean "Saturday"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
