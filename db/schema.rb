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

ActiveRecord::Schema[7.0].define(version: 2022_06_29_203125) do
  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_assignments", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "assignment_id", null: false
    t.date "assignedOn"
    t.date "dueOn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_course_assignments_on_assignment_id"
    t.index ["course_id"], name: "index_course_assignments_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "gradeLevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_assignments", "assignments"
  add_foreign_key "course_assignments", "courses"
end
