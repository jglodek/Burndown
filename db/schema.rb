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

ActiveRecord::Schema.define(:version => 20111011153442) do

  create_table "backlog_items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "evaluations", :force => true do |t|
    t.integer  "value"
    t.datetime "effective_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "backlog_item_id"
    t.integer  "evaluation_type"
  end

  create_table "project_memberships", :force => true do |t|
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "project_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.datetime "finished_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "project_memberships_count"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
