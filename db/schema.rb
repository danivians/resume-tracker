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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120614010207) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.date     "intake_date"
    t.date     "followup_date"
    t.text     "comments"
    t.integer  "user_id"
    t.integer  "source_id"
    t.integer  "status_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "candidates", ["source_id"], :name => "index_candidates_on_source_id"
  add_index "candidates", ["status_id"], :name => "index_candidates_on_status_id"
  add_index "candidates", ["user_id"], :name => "index_candidates_on_user_id"

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "primary"
    t.string   "secondary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
