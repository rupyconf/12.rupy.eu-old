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

ActiveRecord::Schema.define(:version => 20121016144937) do

  create_table "admins", :force => true do |t|
    t.string   "email",               :default => "", :null => false
    t.string   "encrypted_password",  :default => "", :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true

  create_table "br_cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "br_cities", ["state_id"], :name => "index_br_cities_on_state_id"

  create_table "br_inscriptions", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cpf"
    t.integer  "city_id"
    t.string   "twitter"
    t.boolean  "student"
    t.string   "educational_institution"
    t.string   "company_name"
    t.string   "company_website"
    t.string   "company_position"
    t.string   "ruby_experience"
    t.string   "python_experience"
    t.string   "javascript_experience"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "payment_token"
    t.string   "payment_status"
    t.string   "payment_method"
    t.datetime "payment_processed_at"
    t.integer  "event_id"
    t.integer  "training_id"
    t.string   "payment_transaction"
  end

  add_index "br_inscriptions", ["city_id"], :name => "index_br_inscriptions_on_city_id"

  create_table "br_states", :force => true do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.text     "description"
    t.string   "place"
    t.string   "address"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "domain"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "title"
    t.string   "locale"
    t.string   "brochure"
    t.string   "inscription_photo_file_name"
    t.string   "inscription_photo_content_type"
    t.integer  "inscription_photo_file_size"
    t.datetime "inscription_photo_updated_at"
    t.text     "inscription_description"
    t.float    "inscription_value"
    t.integer  "inscription_amount"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "event_id"
    t.datetime "occur_at"
    t.string   "talk"
    t.text     "talk_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "speaker1_id"
    t.integer  "speaker2_id"
  end

  add_index "schedules", ["event_id"], :name => "index_schedules_on_event_id"

  create_table "speakers", :force => true do |t|
    t.integer  "sequence"
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "event_id"
    t.string   "twitter"
    t.string   "github"
    t.string   "website"
  end

  create_table "sponsor_types", :force => true do |t|
    t.integer  "sequence"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.integer  "sponsor_type_id"
    t.integer  "sequence"
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "event_id"
  end

  add_index "sponsors", ["sponsor_type_id"], :name => "index_sponsors_on_sponsor_type_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "twitter"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "event_id"
  end

  create_table "trainings", :force => true do |t|
    t.integer  "event_id"
    t.integer  "sequence"
    t.string   "name"
    t.text     "description"
    t.string   "instructor_name"
    t.text     "instructor_description"
    t.text     "summary"
    t.text     "payment_method"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "instructor_photo_file_name"
    t.string   "instructor_photo_content_type"
    t.integer  "instructor_photo_file_size"
    t.datetime "instructor_photo_updated_at"
    t.integer  "inscription_amount"
    t.string   "instructor_profile"
    t.string   "instructor_twitter"
    t.string   "instructor_website"
    t.string   "instructor_job_title"
    t.string   "hours"
  end

  add_index "trainings", ["event_id"], :name => "index_trainings_on_event_id"

end
