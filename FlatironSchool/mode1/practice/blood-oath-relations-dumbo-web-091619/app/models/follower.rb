
class Follower
  attr_reader :name, :age, :life_moto
  @@all = []

  def initialize(name, age, life_moto)
    @name = name
    @age = age
    @life_moto = life_moto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    BloodOath.all.select do |cult|
      if cult.follower == self
      cult.cult
      end
    end
  end

  def join_cult(follower, cult, initiation_date)
    BloodOath.new(self, cult, initiation_date)
  end

  def self.of_a_certain_age(input_age)
    @@all.select do |follower|
      if follower.age == input_age
        follower
      end
    end
  end


end