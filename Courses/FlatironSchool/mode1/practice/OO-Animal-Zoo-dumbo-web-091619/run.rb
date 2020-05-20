require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Super Zoo", "Bronx")
zoo2 = Zoo.new("Cool Zoo", "Wiskonsin")

animal1 = Animal.new("Barsik", 10, "cat", zoo1)
animal2 = Animal.new("Murzik", 5, "cat", zoo1)
animal3 = Animal.new("Bobik", 5, "dog", zoo2)

binding.pry
puts "done"
