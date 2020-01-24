# Get a list of all gyms - done
# Get a list of all memberships at a specific gym - done
# Get a list of all the lifters that have a membership to a specific gym - done
# Get a list of the names of all lifters that have a membership to that gym - done
# Get the combined lift total of every lifter has a membership to that gym -

class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_membership(gym)
    Membership.all.select do |member|
      if member.gym.name == gym
      member.gym
    end
    end
  end

  def all_lifters(gym)
    Membership.all.select do |member|
      if member.gym.name == gym
      member.lifter.name
    end
  end
  end

  def total_lift(gym)
    lift_array = Membership.all.map do |member|
      if member.gym.name == gym
      member.lifter.lift_total
    end
    end
    lift_array = lift_array.compact
    lift_array.sum
  end

end