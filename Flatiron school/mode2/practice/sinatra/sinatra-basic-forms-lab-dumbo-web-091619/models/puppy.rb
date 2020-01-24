class Puppy
  attr_reader :breed
  attr_accessor :months_old, :name
  
  def initialize(name, breed, months_old)
    @name = name
    @breed = breed
    @months_old = months_old
  end

end