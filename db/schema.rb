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

ActiveRecord::Schema.define(:version => 20130209231208) do

  create_table "generations", :force => true do |t|
    t.integer  "n"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer  "border"
    t.integer  "size"
    t.integer  "size_p"
    t.integer  "white_p"
    t.integer  "black_p"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "status"
    t.integer  "generation_id"
  end

end
