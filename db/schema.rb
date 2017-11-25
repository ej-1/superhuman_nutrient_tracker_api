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

ActiveRecord::Schema.define(version: 20171124232137) do

  create_table "eaten_foods", force: :cascade do |t|
    t.integer  "food_type_id"
    t.string   "food_type_name"
    t.integer  "user_id"
    t.float    "amount"
    t.string   "metric_used"
    t.datetime "eaten_at"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.float    "energy"
    t.float    "carbohydrates"
    t.float    "fat"
    t.float    "protein"
    t.float    "fiber"
    t.float    "water"
    t.float    "alcohol"
    t.float    "ash"
    t.float    "sucrose"
    t.float    "whole_grains_total"
    t.float    "sugar_types"
    t.float    "epa"
    t.float    "dpa"
    t.float    "dha"
    t.float    "retinol"
    t.float    "vitamin_a"
    t.float    "b_carotene"
    t.float    "vitamin_d"
    t.float    "vitamin_e"
    t.float    "vitamin_k"
    t.float    "riboflavin"
    t.float    "vitamin_c"
    t.float    "niacin"
    t.float    "niacin_equivalents"
    t.float    "vitamin_b6"
    t.float    "folate"
    t.float    "phosphorus"
    t.float    "iron"
    t.float    "calcium"
    t.float    "potassium"
    t.float    "magnesium"
    t.float    "sodium"
    t.float    "selenium"
    t.float    "zinc"
    t.float    "waste"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
