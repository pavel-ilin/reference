# Get a list of all owners - done
# Get a list of all the cars that a specific owner has - done
# Get a list of all the mechanics that a specific owner goes to - done
# Get the average amount of cars owned for all owners - done

class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_own
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    cars_own.select do |car|
      if car.car_owner == self
      car.mechanic
    end
  end
  end

  def cars_own_overage
    cars_own.size
  end

end
