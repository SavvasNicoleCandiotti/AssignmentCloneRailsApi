class AddProgramToAssignments < ActiveRecord::Migration[7.0]
  def change
    add_reference :assignments, :program, null: false, foreign_key: true
  end
end
