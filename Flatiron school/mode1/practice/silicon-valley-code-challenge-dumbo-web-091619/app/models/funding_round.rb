class FundingRound
  attr_reader :startup, :venture_capitalist, :type, :investment
  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    if investment >= 0
      @investment = investment
      @@all << self
    else
      puts "Naah"
    end
  end

  def self.all
    @@all
  end


  def type
    @@all.select do |round|
      round.venture_capitalist == self
      round.type
    end

  end

end
