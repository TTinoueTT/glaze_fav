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

ActiveRecord::Schema.define(version: 2020_11_08_140654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

end
