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

ActiveRecord::Schema.define(version: 20150818235340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.string   "postcode"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artist_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artist_users", ["artist_id"], name: "index_artist_users_on_artist_id", using: :btree
  add_index "artist_users", ["user_id"], name: "index_artist_users_on_user_id", using: :btree

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.integer  "location_id"
    t.integer  "area_id"
    t.string   "name"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["area_id"], name: "index_companies_on_area_id", using: :btree
  add_index "companies", ["location_id"], name: "index_companies_on_location_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_user_statuses", force: true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_user_statuses", ["event_id"], name: "index_event_user_statuses_on_event_id", using: :btree
  add_index "event_user_statuses", ["user_id"], name: "index_event_user_statuses_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.integer  "artist_id"
    t.integer  "tour_id"
    t.integer  "status_id"
    t.integer  "venue_id"
    t.string   "fee"
    t.string   "percentage"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["artist_id"], name: "index_events_on_artist_id", using: :btree
  add_index "events", ["status_id"], name: "index_events_on_status_id", using: :btree
  add_index "events", ["tour_id"], name: "index_events_on_tour_id", using: :btree
  add_index "events", ["venue_id"], name: "index_events_on_venue_id", using: :btree

  create_table "locations", force: true do |t|
    t.integer  "country_id"
    t.integer  "area_id"
    t.string   "address"
    t.decimal  "latitude",   precision: 10, scale: 6
    t.decimal  "longitude",  precision: 10, scale: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["area_id"], name: "index_locations_on_area_id", using: :btree
  add_index "locations", ["country_id"], name: "index_locations_on_country_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_roles", ["role_id"], name: "index_user_roles_on_role_id", using: :btree
  add_index "user_roles", ["user_id"], name: "index_user_roles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "company_id"
    t.string   "first_name",             default: "",   null: false
    t.string   "last_name",              default: "",   null: false
    t.boolean  "active",                 default: true
    t.string   "phone",                  default: "",   null: false
    t.string   "avatar"
    t.string   "description",            default: "",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

  create_table "venue_roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venue_users", force: true do |t|
    t.integer  "venue_role_id"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venue_users", ["user_id"], name: "index_venue_users_on_user_id", using: :btree
  add_index "venue_users", ["venue_id"], name: "index_venue_users_on_venue_id", using: :btree
  add_index "venue_users", ["venue_role_id"], name: "index_venue_users_on_venue_role_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venues", ["location_id"], name: "index_venues_on_location_id", using: :btree

end
