class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :gradeLevel
      t.boolean :is_common_core

      t.timestamps
    end
  end
end
