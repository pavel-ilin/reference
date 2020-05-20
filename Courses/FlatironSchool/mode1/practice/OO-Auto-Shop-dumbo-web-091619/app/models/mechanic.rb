# Get a list of all mechanics - done
# Get a list of all cars that a mechanic services - done
# Get a list of all the car owners that go to a specific mechanic - done
# Get a list of the names of all car owners who go to a specific mechanic - done

class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    all_cars.select do |car|
      if car.mechanic == self
      car.car_owner
    end
    end
  end

  def owners_names
    owners_array = all_cars.map do |car|
      if car.mechanic == self
        car.car_owner.name
      end
    end
    owners_array.uniq
  end

end
