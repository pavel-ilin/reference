# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Alex", 100)
lifter2 = Lifter.new("Oleg", 200)
lifter3 = Lifter.new("Natasha", 300)

gym1 = Gym.new("Inwood")
gym2 = Gym.new("Harlem")
gym3 = Gym.new("Chelsea")

membership1 = lifter1.sign_up(gym1, 1000)
membership2 = lifter1.sign_up(gym2, 500)
membership3 = lifter2.sign_up(gym1, 500)


binding.pry

puts "Gains!"
