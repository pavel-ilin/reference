# code here!

class School
  attr_accessor :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.select do |grade, student_name|
      roster[grade] = student_name.sort
    end
    roster
  end

end

