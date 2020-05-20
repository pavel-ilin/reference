# Get a list of all lifters - done
# Get a list of all the memberships that a specific lifter has - done
# Get a list of all the gyms that a specific lifter has memberships to - done
# Get the average lift total of all lifters - done
# Get the total cost of a specific lifter's gym memberships - done
# Given a gym and a membership cost, sign a specific lifter up for a new gym - done

class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def lifter_membership(lifter)
    Membership.all.select do |member|
      member.lifter == self
    end
  end

  def lifter_gym(lifter)
    Membership.all.map do |member|
      member.gym
    end
  end

  def self.lift_tot
    lift_array = @@all.map do |lift|
      lift.lift_total
    end
    overage = lift_array.sum / lift_array.size
  end

  def total_cost
    costs = Membership.all.map do |member|
      member.cost
    end
    costs.sum
  end

  def sign_up_specific(gym, cost)
      if gym == "Inwood" && cost < 1000
         return Membership.new(self, gym, cost)
      elsif gym != "Inwood" && cost < 1000
        return puts "Too far"
      elsif gym == "Inwood" && cost >= 1000
        return puts "To expensive"
    end
  end

end
