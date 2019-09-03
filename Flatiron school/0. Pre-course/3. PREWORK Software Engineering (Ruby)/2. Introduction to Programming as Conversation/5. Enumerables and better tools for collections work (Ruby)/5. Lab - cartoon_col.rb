def roll_call_dwarves(array)
  array.map.with_index { |x, i| x = (i+1).to_s + (". "+ x)
  puts x}
  array
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map{ |x| x.capitalize + "!"}
end

def long_planeteer_calls(short_words)
  short_words.any? do |x| x.length > 4
  end
end

def find_the_cheese(soup)
  cheese_types = ["cheddar", "gouda", "camembert"]
  soup.find do |x| cheese_types.include?(x)
  end
end
