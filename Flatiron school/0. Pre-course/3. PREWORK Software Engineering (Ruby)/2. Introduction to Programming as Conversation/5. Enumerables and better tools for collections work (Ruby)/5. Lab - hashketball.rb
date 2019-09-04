require "pry"

def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
        ]
    },
    away:  {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
        ]
    }
  }
end

def num_points_scored(name)
  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        if name == player[:player_name]
        return player[:points]
        end
        end
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        if name == player[:player_name]
        return player[:shoe]
        end
        end
      end
    end
  end
end


def team_colors(team)
  game_hash.each do |home_away, t_team|
    if t_team[:team_name] == team
      return t_team[:colors]
    end
  end
end

def team_names
  game_hash.map do |_place, test|
    test[:team_name]
  end
end

def player_numbers(team_name)
  num_array = []
  game_hash.each do |team, team_value|
      if team_value[:team_name] == team_name
        team_value[:players].each do |number|
        num_array.push(number[:number])
      end
    end
  end
  num_array
end


def player_stats(player_name)
  game_hash.each do |team, team_value|
    team_value.each do |parameter, stat|
      if parameter == :players
        stat.each do |player|
          if player[:player_name] == player_name
            return player.delete_if do |k, v|
              k == :player_name
            end
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  array = []
  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        array.push(player[:shoe])

        end
      end
    end
  end
  big_shoe = array.max
  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        if player[:shoe] == big_shoe
        return player[:rebounds]
        end
      end
     end
    end
  end
end

def most_points_scored
  array = []
  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        array.push(player[:points])
        end
      end
    end
  end
  array.max
  max_points = array.max

  game_hash.each do |home_away, team|
    team.each do |parameter, players|
      if parameter == :players
        players.each do |player|
        if player[:points] == max_points
        return player[:player_name]
        end
      end
     end
    end
  end
end

def winning_team
  score = 0
  you_won = ''
  game_hash.each do |home_away, keys|
    team_points = 0
    team_name = game_hash[home_away][:team_name]
    keys[:players].each do |player|
      points = player[:points]
      team_points += points
    end
    you_won, score = team_name, team_points if team_points > score
  end
  return you_won
end

def player_with_longest_name
  array = []
  game_hash.each do |home_away, team|
    team[:players].each do |players|
        array.push(players[:player_name])
    end
  end
  max_length = 0
  max_name = ""
  array.each do |x|
    if max_length < x.length
      max_length = x.length
      max_name = x
    end
    end
     max_name
end

def long_name_steals_a_ton?
  array = []
  game_hash.each do |home_away, team|
    team[:players].each do |players|
        array.push(players[:player_name])
    end
  end
  max_length = 0
  max_name = ""
  array.each do |x|
    if max_length < x.length
      max_length = x.length
      max_name = x
    end
    end
     max_name

  steals_name = ""
  steals = 0

  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      steals_name, steals = player[:player_name], player[:steals] if player[:steals] > steals
    end
  end
  return true if steals_name == max_name
end
