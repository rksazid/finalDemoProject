class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :course_id
      t.float :credit
      t.decimal :semester

      t.timestamps
    end
  end
end
