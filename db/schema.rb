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

ActiveRecord::Schema.define(version: 20171125134411) do

  create_table "daily_profiles", force: :cascade do |t|
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
    t.float    "energy_rdi_precentage"
    t.float    "carbohydrates_rdi_precentage"
    t.float    "fat_rdi_precentage"
    t.float    "protein_rdi_precentage"
    t.float    "fiber_rdi_precentage"
    t.float    "water_rdi_precentage"
    t.float    "alcohol_rdi_precentage"
    t.float    "ash_rdi_precentage"
    t.float    "sucrose_rdi_precentage"
    t.float    "whole_grains_total_rdi_precentage"
    t.float    "sugar_types_rdi_precentage"
    t.float    "epa_rdi_precentage"
    t.float    "dpa_rdi_precentage"
    t.float    "dha_rdi_precentage"
    t.float    "retinol_rdi_precentage"
    t.float    "vitamin_a_rdi_precentage"
    t.float    "b_carotene_rdi_precentage"
    t.float    "vitamin_d_rdi_precentage"
    t.float    "vitamin_e_rdi_precentage"
    t.float    "vitamin_k_rdi_precentage"
    t.float    "riboflavin_rdi_precentage"
    t.float    "vitamin_c_rdi_precentage"
    t.float    "niacin_rdi_precentage"
    t.float    "niacin_equivalents_rdi_precentage"
    t.float    "vitamin_b6_rdi_precentage"
    t.float    "folate_rdi_precentage"
    t.float    "phosphorus_rdi_precentage"
    t.float    "iron_rdi_precentage"
    t.float    "calcium_rdi_precentage"
    t.float    "potassium_rdi_precentage"
    t.float    "magnesium_rdi_precentage"
    t.float    "sodium_rdi_precentage"
    t.float    "selenium_rdi_precentage"
    t.float    "zinc_rdi_precentage"
    t.float    "waste_rdi_precentage"
    t.integer  "user_id"
    t.datetime "eaten_at"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["user_id"], name: "index_daily_profiles_on_user_id"
  end

  create_table "eaten_foods", force: :cascade do |t|
    t.integer  "food_type_id"
    t.string   "food_type_name"
    t.integer  "user_id"
    t.float    "amount"
    t.string   "metric_used"
    t.integer  "daily_profile_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["daily_profile_id"], name: "index_eaten_foods_on_daily_profile_id"
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
    t.string   "birth_date"
    t.string   "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
