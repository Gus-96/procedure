# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_07_173340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coins", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mining_type_id"
    t.index ["mining_type_id"], name: "index_coins_on_mining_type_id"
  end

  create_table "genero_usuario", primary_key: "genero_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "tipo_genero"
  end

  create_table "mining_types", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "telefone_usuario", primary_key: "telefone_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "tipo_telefone"
    t.text "numero_telefone"
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "fki_usuario_id"
  end

  create_table "usuario", primary_key: "usuario_id", id: :integer, default: nil, force: :cascade do |t|
    t.text "nome"
    t.text "idade"
    t.text "cpf"
    t.integer "genero_id", null: false
  end

  add_foreign_key "coins", "mining_types"
  add_foreign_key "telefone_usuario", "usuario", primary_key: "usuario_id", name: "usuario_id"
  add_foreign_key "usuario", "genero_usuario", column: "usuario_id", primary_key: "genero_id", name: "genero_id"
end
