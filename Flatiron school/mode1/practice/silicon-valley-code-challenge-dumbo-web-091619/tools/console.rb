require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("KrioRUs", "Immorta", "Immortality")
startup2 = Startup.new("USTP", "Pavel", "Immortality")
startup3 = Startup.new("Flatiron School", "Guy who not responding", "Education")

capitalist1 = VentureCapitalist.new("Lurk", 1000000001)
capitalist2 = VentureCapitalist.new("Blurk", 132)

startup1.sign_contract(capitalist1, "Round A", 2_000_000_000)
startup1.sign_contract(capitalist2, "Round B", 1_000_000_000)
startup2.sign_contract(capitalist1, "Round C", 4_000_000_000)
startup3.sign_contract(capitalist1, "Round A", 1_000_000_000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line