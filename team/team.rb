class Team 
  attr_accessor :team_name, :players_array, :coach_name, :points
  def initialize(team_name, players_array, coach_name, points = 0)
    @team_name = team_name
    @players_array = players_array
    @coach_name = coach_name
    @points = points
  end

  def add_new_player(name_str)
    @players_array.push(name_str)
  end

  def does_player_exist(name_str)
   return @players_array.include?(name_str)
  end

  def change_score(win_lose_str)
    @points += 1 if win_lose_str == "win"
    @points -= 1 if win_lose_str == "lose"
  end
end