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

ActiveRecord::Schema.define(version: 20141107112545) do

  create_table "place_bookings", force: true do |t|
    t.string   "user_name"
    t.string   "queue_name"
    t.integer  "number"
    t.time     "start"
    t.time     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "queue_models", force: true do |t|
    t.string   "name"
    t.integer  "gps_longitude"
    t.integer  "gps_latitude"
    t.text     "description"
    t.integer  "num_customer"
    t.integer  "last_customer"
    t.integer  "average_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
