class Animal

  attr_accessor :weight
  attr_reader :nick_name, :species, :zoo

  @@all = []

  def initialize (nick_name, weight, species, zoo)
    @nick_name = nick_name
    @weight = weight
    @species = species
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def zoo
    @zoo
  end

  def find_by_species(species_type)
    species_array = @@all.select do |animal|
      animal.species == species_type
    end
    species_array
  end

end
