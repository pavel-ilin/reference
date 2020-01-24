class Instructor
  attr_reader :instructor
  @@all = []

  def initialize(instructor)
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end


  def results
    BoatingTest.all.select do |test|
      test
    end
  end

  def pass_student(student, test_name)
    results.find do |test|
      if test.student == student && test.test_name == test_name
        test.status == "passed"
        test
      elsif test.status != "passed"
        test.status = "passed"
      else
        return BoatingTest.new(student, test_name, status = "passed", self)
      end
    end
  end

  def fail_student(student, test_name)
    results.find do |test|
      if test.student == student && test.test_name == test_name
        test.status == "failed"
        test
      elsif test.status != "failed"
        test.status = "failed"
      else
        return BoatingTest.new(student, test_name, status = "passed", self)
      end
    end
  end

end
