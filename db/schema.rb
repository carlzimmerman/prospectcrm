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

ActiveRecord::Schema.define(version: 20180703155950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communication_notes", force: :cascade do |t|
    t.text     "type"
    t.text     "notes"
    t.text     "prospect_status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contact_notes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "contact_type"
    t.text     "notes"
    t.string   "status"
    t.integer  "peg_group_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "logs", ["peg_group_id"], name: "index_logs_on_peg_group_id", using: :btree

  create_table "peg_contact_infos", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "title"
    t.text     "email"
    t.text     "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peg_contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peg_groups", force: :cascade do |t|
    t.text     "firm_name"
    t.text     "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pegs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "point_of_contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.integer  "peg_group_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "point_of_contacts", ["peg_group_id"], name: "index_point_of_contacts_on_peg_group_id", using: :btree

  add_foreign_key "logs", "peg_groups"
  add_foreign_key "point_of_contacts", "peg_groups"
end
