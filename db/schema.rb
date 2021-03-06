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

ActiveRecord::Schema.define(version: 20151231141958) do

  create_table "answers", force: :cascade do |t|
    t.string   "nickname"
    t.string   "order"
    t.decimal  "amount"
    t.decimal  "payed"
    t.integer  "command_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "owner"
  end

  add_index "answers", ["command_id"], name: "index_answers_on_command_id"

  create_table "commands", force: :cascade do |t|
    t.datetime "date",                                null: false
    t.string   "description",                         null: false
    t.datetime "limit_date"
    t.string   "payment"
    t.string   "state",                               null: false
    t.decimal  "total",       precision: 8, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "owner"
  end

end
