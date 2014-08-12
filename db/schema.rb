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

ActiveRecord::Schema.define(version: 20140812210854) do

  create_table "child_care_vouchers", force: true do |t|
    t.integer  "ccdf_dependent_no"
    t.integer  "ccdf_eligible_children"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "ccdf_gross_income"
  end

  create_table "programs", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "rental_assistances", force: true do |t|
    t.integer  "rental_dependent_no"
    t.decimal  "rental_gross_income"
    t.integer  "rental_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rta_free_rides", force: true do |t|
    t.integer  "rta_dependent_no"
    t.decimal  "rta_gross_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snap_eligibilities", force: true do |t|
    t.integer  "snap_dependent_no"
    t.decimal  "snap_gross_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snap_eligibility_seniors", force: true do |t|
    t.integer  "snap_dependent_no"
    t.decimal  "snap_gross_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
