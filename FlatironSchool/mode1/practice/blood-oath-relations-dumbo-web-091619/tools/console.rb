require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Animals", "NY", 1984, "Eat them all")
cult2 = Cult.new("Beasts", "NJ", 1914, "Arghhhh")


follower1 = Follower.new("Alex", 19, "aaaaaa")
follower2 = Follower.new("Alexa", 19, "Pkhhhh")
follower3 = Follower.new("Elena", 12, "Bugaga")


bloodoat1 = BloodOath.new(follower1, cult1, 123)
bloodoat2 = BloodOath.new(follower2, cult1, 123)
bloodoat3 = BloodOath.new(follower2, cult2, 123)


binding.pry

#puts "Mwahahaha!" # just in case pry is buggy and exits
