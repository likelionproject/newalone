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

ActiveRecord::Schema.define(version: 20150828062454) do

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "newpf_id"
    t.integer  "user_id"
    t.string   "context"
  end

  create_table "newpfs", force: :cascade do |t|
    t.string  "pf_title"
    t.string  "pf_add_br"
    t.text    "pf_infor"
    t.string  "pf_address"
    t.string  "pf_address_sub"
    t.string  "pf_add_lat"
    t.string  "pf_add_lng"
    t.string  "pf_image"
    t.date    "pf_date"
    t.string  "pf_time"
    t.integer "pf_userid"
    t.string  "musical"
    t.string  "play"
    t.string  "concert"
    t.string  "classic"
    t.string  "jeonsi"
    t.string  "sport"
    t.string  "busking"
    t.string  "amateur"
    t.string  "etc"
  end

  create_table "performanceinfos", force: :cascade do |t|
    t.string   "team_name"
    t.string   "team_member"
    t.string   "team_pic"
    t.string   "team_loca"
    t.text     "team_info"
    t.string   "team_fb"
    t.string   "team_tw"
    t.string   "team_blog"
    t.string   "team_musical"
    t.string   "team_play"
    t.string   "team_concert"
    t.string   "team_classic"
    t.string   "team_jeonsi"
    t.string   "team_sport"
    t.string   "team_busking"
    t.string   "team_amateur"
    t.string   "team_etc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "comment_id"
    t.integer  "user_id"
    t.string   "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "typenum",                default: 0,  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
