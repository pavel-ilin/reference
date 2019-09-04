data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |move_value, names|
      names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][key] == nil
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key].push(move_value.to_s)
      end
    end
  end
  pigeon_list
end

nyc_pigeon_organizer(data)
