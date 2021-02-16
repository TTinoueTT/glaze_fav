# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_16_083622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "electron_shells", force: :cascade do |t|
    t.integer "k_shell", default: 0
    t.integer "l_shell", default: 0
    t.integer "m_shell", default: 0
    t.integer "n_shell", default: 0
    t.integer "o_shell", default: 0
    t.integer "p_shell", default: 0
    t.integer "q_shell", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "periodic_atom_id"
    t.index ["periodic_atom_id"], name: "index_electron_shells_on_periodic_atom_id"
  end

  create_table "materials", force: :cascade do |t|
    t.text "name"
    t.decimal "sio2", precision: 4, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "tio2", precision: 4, scale: 2, default: "0.0"
    t.decimal "al2o3", precision: 4, scale: 2, default: "0.0"
    t.decimal "fe2o3", precision: 4, scale: 2, default: "0.0"
    t.decimal "cao", precision: 4, scale: 2, default: "0.0"
    t.decimal "mgo", precision: 4, scale: 2, default: "0.0"
    t.decimal "k2o", precision: 4, scale: 2, default: "0.0"
    t.decimal "na2o", precision: 4, scale: 2, default: "0.0"
    t.bigint "user_id", null: false
    t.string "category"
    t.text "description"
    t.decimal "mno", precision: 4, scale: 2, default: "0.0"
    t.decimal "zno", precision: 4, scale: 2, default: "0.0"
    t.decimal "bao", precision: 4, scale: 2, default: "0.0"
    t.decimal "p2o5", precision: 4, scale: 2, default: "0.0"
    t.decimal "iglos", precision: 4, scale: 2, default: "0.0"
    t.index ["user_id"], name: "index_materials_on_user_id"
  end

  create_table "periodic_atoms", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.integer "atomic_num"
    t.integer "group"
    t.integer "period"
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "classification"
    t.decimal "melting_point", precision: 4, scale: 2, default: "0.0"
    t.decimal "boiling_point", precision: 4, scale: 2, default: "0.0"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "electron_shells", "periodic_atoms"
end
