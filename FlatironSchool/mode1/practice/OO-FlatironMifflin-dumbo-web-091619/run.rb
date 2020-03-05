require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager = Manager.new("Michael", "Bakery", 47)
manager1 = Manager.new("sr", "sef", 147)

employee1 = Employee.new("Alex", 1000, manager)
employee2 = Employee.new("Natasha", 1000, manager)

binding.pry
puts "done"
