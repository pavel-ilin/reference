class Cult

  attr_reader :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower, cult, initiation_date)
    BloodOath.new(follower, self, initiation_date)
  end

  def followers
    BloodOath.all.select do |cult|
      if cult.cult == self
      cult.follower
      end
    end
  end

  def cult_population
    cult_pop = followers.map do |follower|
      follower
    end
    cult_pop.size
  end

  def self.find_by_name(cult_name)
    @@all.select do |name|
      name.name == cult_name
    end
  end

  def self.find_by_location(cult_location)
    @@all.select do |location|
      location.location == cult_location
    end
  end

  def self.find_by_founding_year(cult_fouding_year)
    @@all.select do |year|
      year.founding_year == cult_fouding_year
    end
  end


end