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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111114214252) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "logo"
    t.datetime "event_start"
    t.datetime "event_end"
    t.boolean  "is_all_day"
    t.boolean  "is_special"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", :force => true do |t|
    t.integer  "location_id"
    t.integer  "promotion_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  add_index "features", ["event_id"], :name => "index_features_on_event_id"
  add_index "features", ["location_id"], :name => "index_features_on_location_id"
  add_index "features", ["promotion_id"], :name => "index_features_on_promotion_id"

  create_table "locations", :force => true do |t|
    t.integer  "venue_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["venue_id"], :name => "index_locations_on_venue_id"

  create_table "promotions", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "url"
    t.text     "description"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
