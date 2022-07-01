class CreateCoursePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :course_programs do |t|
      t.references :course, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
