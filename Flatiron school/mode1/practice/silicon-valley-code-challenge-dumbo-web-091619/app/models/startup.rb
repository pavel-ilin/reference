class Startup
  attr_reader :name, :founder, :domain
  attr_accessor :pivot
  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @pivot = "#{@founder} #{@domain}"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    @@all.select do |name|
      name.founder == founder
    end
  end

  def self.domains
    @@all.map do |domains|
      domains.domain
    end
  end

  def sign_contract(capitalist, type, investment)
    FundingRound.new(self, capitalist, type, investment)
  end

  def num_funding_rounds
    rounds = FundingRound.all.select do |round|
      round.startup == self
    end
    rounds.size
  end

  def funds
    FundingRound.all.select do |round|
      round.startup == self
    end
  end

  def total_funds
    x = 0
    self.funds.map do |round|
      x += round.investment
    end
    x
  end

  def investors
    investors = self.funds.map do|round|
      round.venture_capitalist
    end
    investors.uniq
  end

  def big_investors
    self.investors.select do |round|
      VentureCapitalist.tres_commas_club.include?(round)
    end

  end

end