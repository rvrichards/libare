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

ActiveRecord::Schema.define(version: 20170909221010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "libations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "libation_name"
    t.string   "libation_type"
    t.float    "weight"
    t.string   "weight_type"
    t.string   "container_type"
    t.string   "country_made"
    t.string   "company_name"
    t.string   "website"
    t.date     "date_drank"
    t.string   "store_purchased"
    t.string   "city_purchased"
    t.string   "prov_purchased"
    t.string   "country_purchased"
    t.string   "colour"
    t.integer  "pulp"
    t.integer  "can_art"
    t.integer  "can_design"
    t.integer  "sweet"
    t.integer  "juice"
    t.integer  "sip_guzz"
    t.integer  "flavour"
    t.string   "buy_again"
    t.boolean  "carbonated"
    t.string   "image"
    t.text     "comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["libation_name"], name: "index_libations_on_libation_name", using: :btree
    t.index ["user_id"], name: "index_libations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "libations", "users"
end
