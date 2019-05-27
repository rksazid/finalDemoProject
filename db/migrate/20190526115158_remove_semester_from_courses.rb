class RemoveSemesterFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :semester, :string
  end
end
