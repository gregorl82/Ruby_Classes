class Team

  attr_reader :name, :players, :points
  attr_accessor :coach

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def has_player?(player_to_find)
    for player in @players
      if (player == player_to_find)
        return true
      end
    end
    return false
  end

  def update_points(result)
    if (result == "won")
      @points += 3
    end
  end
#
end
