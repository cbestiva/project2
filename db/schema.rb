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

ActiveRecord::Schema.define(version: 20140223231918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "funcheaps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "itinerary_id"
  end

  add_index "funcheaps", ["itinerary_id"], name: "index_funcheaps_on_itinerary_id", using: :btree

  create_table "funcheaps_itineraries", force: true do |t|
    t.integer  "funcheap_id"
    t.integer  "itinerary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcheaps_itineraries", ["funcheap_id"], name: "index_funcheaps_itineraries_on_funcheap_id", using: :btree
  add_index "funcheaps_itineraries", ["itinerary_id"], name: "index_funcheaps_itineraries_on_itinerary_id", using: :btree

  create_table "itineraries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "itinerary_id"
  end

  add_index "restaurants", ["itinerary_id"], name: "index_restaurants_on_itinerary_id", using: :btree

  create_table "restaurants_itineraries", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "itinerary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants_itineraries", ["itinerary_id"], name: "index_restaurants_itineraries_on_itinerary_id", using: :btree
  add_index "restaurants_itineraries", ["restaurant_id"], name: "index_restaurants_itineraries_on_restaurant_id", using: :btree

end
