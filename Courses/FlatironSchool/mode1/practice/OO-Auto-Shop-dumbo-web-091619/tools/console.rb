require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


car_owner1 = CarOwner.new("Alex")
car_owner2 = CarOwner.new("Natasha")
car_owner3 = CarOwner.new("Michael")

mech1 = Mechanic.new("Oleg", "van")
mech2 = Mechanic.new("Pablo", "truck")
mech2 = Mechanic.new("Pchh", "van")

car1 = Car.new("make1", "model_truck1", "truck", car_owner1, mech1)
car2 = Car.new("make2", "model_van1", "van", car_owner1, mech1)
car3 = Car.new("make3", "model_van2", "van", car_owner2, mech2)

binding.pry
