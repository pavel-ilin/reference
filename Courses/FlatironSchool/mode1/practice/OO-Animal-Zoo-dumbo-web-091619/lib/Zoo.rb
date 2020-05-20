class Zoo

  attr_reader :zoo_name, :location

  @@all = []

  def initialize (zoo_name, location)
    @zoo_name = zoo_name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def all_animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    species_array = self.all_animals.map do |animal|
      animal.species
    end
    species_array.uniq
  end

  def find_by_species(species)
    species_array = all_animals.select do |animal|
      animal.species == species
    end
    species_array
  end

  def animal_nicknames
    nick_name_array = all_animals.map do |animal|
      animal.nick_name
    end
  end

  def find_by_location(location)
    location_array = all_animals.select do |animal|
      animal.zoo.location == location
    end
    location_array
  end


end
