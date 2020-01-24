require_relative './02_add_grade_and_birthdate_to_students.rb'
class CreateStudents < ActiveRecord::Migration[5.1]
    def change
    create_table "students", force: :cascade do |t|
        t.string :name
    end
end
end