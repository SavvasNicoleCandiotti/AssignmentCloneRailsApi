class AddSubjectToPrograms < ActiveRecord::Migration[7.0]
  def change
    add_column :programs, :subject, :string
  end
end
