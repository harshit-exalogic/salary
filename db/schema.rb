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

ActiveRecord::Schema.define(version: 2019_12_10_081900) do

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_of_birth"
    t.date "date_of_joining"
    t.decimal "salary_per_annum"
    t.decimal "salary_per_month"
    t.string "addrress"
    t.string "mobile"
    t.string "email_id"
    t.string "blood_type"
    t.string "emergency_contact_name"
    t.string "emergency_contact_number"
    t.string "primary_skill"
    t.string "secondary_skill_1"
    t.string "secondary_skill_2"
    t.integer "notice_period_in_days"
    t.string "role"
    t.string "state"
    t.decimal "pincode"
    t.string "country"
    t.string "gender"
    t.decimal "basic_pay"
    t.decimal "reimbursement"
    t.decimal "number_of_leaves_taken_by_employee"
    t.decimal "enter_the_tax_rate"
    t.decimal "other_deductions"
    t.decimal "house_rent_allowance"
    t.decimal "city_compensatory_allowance"
    t.decimal "special_allowance"
    t.decimal "transport_allowance"
    t.decimal "income_tax"
    t.decimal "professional_tax"
    t.decimal "loss_of_pay"
    t.decimal "gross_pay"
    t.decimal "net_pay"
    t.decimal "employee_id"
    t.string "department"
    t.string "designation"
    t.decimal "bank_account"
    t.string "bank_name"
    t.string "bank_branch"
    t.string "ifsc_code"
    t.decimal "total_deductions"
    t.string "salary_month"
    t.integer "salary_year"
    t.string "days_in_a_month"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
