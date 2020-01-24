# Employee#name
# returns a String that is the employee's name
# Employee#salary
# returns a Fixnum that is the employee's salary
# Employee#manager_name
# returns a String that is the name of their manager
# Employee.all
# returns an Array of all the employees
# Employee.paid_over
# takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
# Employee.find_by_department
# takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
# Employee#tax_bracket
# returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method

class Employee
  attr_reader :name
  attr_accessor :salary, :manager
  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def managers_name
    @manager.name
  end

  def self.paid_over(fixnum)
    rich_employee = self.all.select do |employee|
      employee.salary > fixnum
    end
    rich_employee
  end

  def self.find_by_department(department)
    Manager.all.select do |manager|
      manager.department == department
    end
  end

  def tax_bracket
    Employee.all.select do |person|
      person.salary <= 1000
    end
  end

end


