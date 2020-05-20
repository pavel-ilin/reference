# Manager#name
# returns a String that is the manager's name
# Manager#department
# returns a String that is the department that the manager oversees
# Manager#age
# returns a Fixnum that is the age of the manager
# Manager#employees
# returns an Array of all the employees that the manager oversees
# Manager.all
# returns an Array of all the managers
# Manager#hire_employee
# takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
# Manager.all_departments
# returns an Array of all the department names that every manager oversees
# Manager.average_age
# returns a Float that is the average age of all the managers

class Manager
  attr_reader :name
  attr_accessor :age, :department
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employee
    Employee.all.select do |employee|
      employee.manager == self
    end
  end

  def hire_employee(string, fixnum)
    Employee.new(string, fixnum, self)
  end

  def self.all_departments
    department_array = @@all.map do |department|
      department.department
    end
  end

  def self.overage_are
    age_list = @@all.map do |age|
      age.age
    end
    age_list.reduce(:+) / age_list.size.to_f
  end

end
