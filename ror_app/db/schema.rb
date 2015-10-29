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

ActiveRecord::Schema.define(version: 20151019084458) do

  create_table "answered_questions", force: true do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_answers_survey_id"
  end

  create_table "answered_questions_user_answers_surveys", id: false, force: true do |t|
    t.integer "user_answers_survey_id", null: false
    t.integer "answered_question_id",   null: false
  end

  create_table "answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "text"
    t.integer  "question_id"
    t.string   "type"
  end

  create_table "continents", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nationalities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "continent_id"
  end

  create_table "question_has_answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "answer_id"
    t.integer  "question_id"
  end

  create_table "questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "text"
    t.integer  "situation_id"
  end

  create_table "situations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "text"
    t.string   "title"
  end

  create_table "survey_has_situations", force: true do |t|
    t.integer  "survey_id"
    t.integer  "situation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "text"
  end

  create_table "universal_answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_answers_surveys", force: true do |t|
    t.integer  "user_id"
    t.integer  "survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "session_id"
    t.boolean  "completed"
  end

  create_table "user_guesses_nationalities", force: true do |t|
    t.integer  "user_id"
    t.integer  "user_answers_survey_id"
    t.integer  "nationality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nationality_id"
  end

end
