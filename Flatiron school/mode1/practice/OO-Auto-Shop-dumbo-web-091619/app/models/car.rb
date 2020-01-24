# Get a list of all cars - done
# Get a list of all car classifications - done
# Get a list of mechanics that have an expertise that matches the car classification - done

class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map do |classs|
      classs.classification
    end
  end


  def  matched_class
    Mechanic.all().select do |mechanic|
      self.classification == mechanic.specialty
    end
  end

end
