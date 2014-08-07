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

ActiveRecord::Schema.define(version: 20140806151052) do

  create_table "networks", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "ip"
    t.string   "sn"
    t.date     "expire"
    t.string   "position"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "brand"
    t.string   "smodel"
    t.string   "ip"
    t.string   "ilo"
    t.string   "cpu"
    t.string   "ram"
    t.string   "harddisk"
    t.string   "os"
    t.string   "sn"
    t.date     "expire"
    t.string   "position"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "sn"
    t.date     "expire"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "username"
    t.string   "password"
    t.text     "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
