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

ActiveRecord::Schema.define(version: 20150620222958) do

  create_table "blsexposures", force: true do |t|
    t.string   "exposure_type"
    t.string   "phase"
    t.integer  "loop_no"
    t.integer  "score"
    t.text     "annotation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cycle_id"
  end

  create_table "cycles", force: true do |t|
    t.text     "picture"
    t.text     "negativecognition"
    t.text     "positivecognition"
    t.integer  "initial_voc"
    t.integer  "initial_sud"
    t.text     "emotion"
    t.text     "body_location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "session_id"
    t.integer  "targetevent_id"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.integer  "age"
    t.text     "medication"
    t.text     "conditions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.datetime "appointment_date"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "targetevents", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
