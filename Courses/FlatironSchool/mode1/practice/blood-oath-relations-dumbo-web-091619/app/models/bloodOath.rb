
class BloodOath
  attr_reader :follower, :cult, :initiation_date
  @@all = []

  def initialize(follower, cult, initiation_date)
    @initiation_date = initiation_date
    @follower = follower
    @cult = cult
    @@all << self
  end

  def self.all
    @@all
  end

  
end