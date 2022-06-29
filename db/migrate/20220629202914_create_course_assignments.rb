class CreateCourseAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :course_assignments do |t|
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :assignment, null: false, foreign_key: true
      t.date :assignedOn
      t.date :dueOn

      t.timestamps
    end
  end
end
