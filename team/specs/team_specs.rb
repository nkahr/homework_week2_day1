require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TeamSpecs < MiniTest::Test 

  def test_can_create_new_team
    Team.new("Team X", ["Chris", "Player 2"], "Coach")
  end

  def test_can_update_coach_name
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    team.coach_name = "Max"
    assert_equal("Max", team.coach_name)
  end

  def test_add_new_player
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    team.add_new_player("Mary")
    assert_equal("Mary", team.players_array.last)
  end

  def test_does_player_exist__true
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    assert_equal(true, team.does_player_exist("Adam"))
  end

  def test_does_player_exist__false
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    assert_equal(false, team.does_player_exist("Player 3"))
  end

  def test_add_point_if_win
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    team.change_score("win")
    assert_equal(1, team.points)
  end

  def test_subtract_point_if_lose
    team = Team.new("Team X", ["Chris", "Adam"], "Coach")
    team.change_score("lose")
    assert_equal(-1, team.points)
  end

end