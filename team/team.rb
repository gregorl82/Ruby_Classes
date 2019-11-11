class Team

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach
  end

  def name
    return @name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def set_coach(new_coach)
    @coach = new_coach
  end
#
end
