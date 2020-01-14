class SportTeam

  attr_accessor :team_name, :player, :couch, :points

  def initialize(input_team_name, input_player, input_couch, input_points)
    @team_name = input_team_name
    @player = input_player
    @couch = input_couch
    @points = input_points
  end

  #GETTERS

  # def name()
  #   return @player
  # end
  # # #
  # def team_name()
  #   return @team_name
  # end
  # #
  # def couch()
  #   return @couch
  # end
  #
  # #SETTERS

  def set_couch_kick(new_couch)
    @couch == new_couch
  end
  #

  def add_player(value)
    @player.push(value).length()
  end
  #
  def check_player_name(name)
    @player.include? name
  end
  def won_lost(value)
    if value == 'won'
      @points += 1
    end
  end
end
