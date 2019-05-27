class AddSemesterToCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :semester, foreign_key: true
  end
end
