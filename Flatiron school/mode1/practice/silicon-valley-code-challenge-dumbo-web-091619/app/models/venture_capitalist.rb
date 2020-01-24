class VentureCapitalist
  attr_accessor :name, :total_worth
  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |capitalist|
      if capitalist.total_worth >= 1000000000
        capitalist
      end
    end
  end

  def type
    FundingRound.all.select do |round|
      if round.venture_capitalist == self
        return round.type
      end
    end
  end

  def offer_contract(startup, type, amount)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
  end

  def portfolio
    potrfolio = self.funding_rounds.map do |round|
      round.startup
    end
    portfolio.uniq
  end

  def biggest_investment
    biggest = self.funding_rounds.map do |round|
      round.investment
    end

    self.funding_rounds.find do|round|
      round.investment == biggest.max
    end
  end

   def invested(domain)
    domains = self.funding_rounds.select do |round|
      round.startup.domain == domain
    end

    domains.reduce(0) do |sum, round|
      sum + round.investment
    end
   end

end