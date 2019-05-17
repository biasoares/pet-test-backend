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

ActiveRecord::Schema.define(version: 20190515045409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "nome"
    t.float    "custo_mensal"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "pessoa_id"
    t.integer  "tipo_id"
    t.index ["pessoa_id"], name: "index_animals_on_pessoa_id", using: :btree
    t.index ["tipo_id"], name: "index_animals_on_tipo_id", using: :btree
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "documento"
    t.string   "data_nascimento"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "pessoas"
  add_foreign_key "animals", "tipos"
end
