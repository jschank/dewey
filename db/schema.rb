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

ActiveRecord::Schema.define(:version => 20111022214922) do

  create_table "events", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "promotion_id"
    t.datetime "event_start"
    t.datetime "event_end"
    t.boolean  "is_all_day"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["promotion_id"], :name => "index_events_on_promotion_id"
  add_index "events", ["venue_id"], :name => "index_events_on_venue_id"

  create_table "promotions", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.string   "link"
    t.integer  "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "address"
    t.binary   "gps_coordinates"
    t.text     "hours"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
