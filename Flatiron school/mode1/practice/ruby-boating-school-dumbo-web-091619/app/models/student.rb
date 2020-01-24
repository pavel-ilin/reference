class Student

  attr_reader :student
  @@all = []

  def initialize(student)
    @student = student
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

end
