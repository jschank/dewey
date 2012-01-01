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

ActiveRecord::Schema.define(:version => 20120101172527) do

  create_table "acts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "hometown"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "formerly"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_special",  :default => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "venue_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["venue_id"], :name => "index_locations_on_venue_id"

  create_table "occurrences", :force => true do |t|
    t.datetime "event_start"
    t.datetime "event_end"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "occurrences", ["event_id"], :name => "index_occurrences_on_event_id"

  create_table "performances", :force => true do |t|
    t.integer  "act_id"
    t.integer  "occurrence_id"
    t.integer  "location_id"
    t.datetime "performance_start"
    t.datetime "performance_end"
    t.integer  "priority",          :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "performances", ["act_id"], :name => "index_performances_on_act_id"
  add_index "performances", ["location_id"], :name => "index_performances_on_location_id"
  add_index "performances", ["occurrence_id"], :name => "index_performances_on_occurrence_id"

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weblocations", :force => true do |t|
    t.string   "name"
    t.string   "tagline"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
