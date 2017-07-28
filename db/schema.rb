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

ActiveRecord::Schema.define(version: 20170727211948) do

  create_table "treatments", force: :cascade do |t|
    t.date     "date_of_treatment"
    t.string   "client_name"
    t.string   "venue"
    t.string   "consent"
    t.text     "contra_indications"
    t.text     "assessment"
    t.text     "daily_goal"
    t.boolean  "aromatherapy"
    t.boolean  "reflexology"
    t.boolean  "other_therapy"
    t.boolean  "grapeseed"
    t.boolean  "sweet_almond"
    t.boolean  "resehip"
    t.boolean  "other_oils"
    t.string   "essentail_oils"
    t.string   "music"
    t.string   "lighting"
    t.string   "outcome"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
