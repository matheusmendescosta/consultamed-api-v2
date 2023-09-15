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

ActiveRecord::Schema[7.0].define(version: 2023_09_14_220545) do
  create_table "addresses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "zip_code"
    t.string "street"
    t.integer "number"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "complement"
  end

  create_table "clinics", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "address_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_clinics_on_address_id"
    t.index ["doctor_id"], name: "index_clinics_on_doctor_id"
    t.index ["patient_id"], name: "index_clinics_on_patient_id"
    t.index ["specialty_id"], name: "index_clinics_on_specialty_id"
  end

  create_table "consultations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "clinic_id", null: false
    t.string "prognostic"
    t.string "diagnosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_consultations_on_clinic_id"
    t.index ["doctor_id"], name: "index_consultations_on_doctor_id"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
  end

  create_table "doctors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "crm"
    t.string "email"
    t.datetime "service_hours"
    t.string "accreditation_info"
    t.bigint "specialty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "medical_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "allergy"
    t.string "type_allergy"
    t.boolean "surgery"
    t.string "type_surgery"
    t.boolean "continuous_medication"
    t.string "type_continuous_medication"
    t.float "weigth"
    t.float "stature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id", null: false
    t.index ["patient_id"], name: "index_medical_records_on_patient_id"
  end

  create_table "patients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "date_birth"
    t.string "email"
    t.integer "phone"
    t.boolean "health_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clinics", "addresses"
  add_foreign_key "clinics", "doctors"
  add_foreign_key "clinics", "patients"
  add_foreign_key "clinics", "specialties"
  add_foreign_key "consultations", "clinics"
  add_foreign_key "consultations", "doctors"
  add_foreign_key "consultations", "patients"
  add_foreign_key "doctors", "specialties"
  add_foreign_key "medical_records", "patients"
end
