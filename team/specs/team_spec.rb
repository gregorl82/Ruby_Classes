require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TeamTests < MiniTest::Test

  def test_can_create_team
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
  end

  def test_name
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    assert_equal("No Hope United", team.name)
  end

  def test_players
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    expected_output = ["Bob", "Mick", "Lee", "Dave", "Chas"]
    assert_equal(expected_output, team.players)
  end

  def test_coach
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    assert_equal("Alex Ferguson", team.coach)
  end

  def test_set_coach
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    team.coach = "Jose Mourinho"
    assert_equal("Jose Mourinho", team.coach)
  end

  def test_add_new_player
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    team.add_new_player("Fred")
    expected_output = ["Bob", "Mick", "Lee", "Dave", "Chas", "Fred"]
    assert_equal(expected_output, team.players)
  end

  def test_has_player__true
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    assert_equal(true, team.has_player?("Mick"))
  end

  def test_has_player__false
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    assert_equal(false, team.has_player?("Jack"))
  end

  def test_points
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    assert_equal(0, team.points)
  end

  def test_update_points__won
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    team.update_points("won")
    assert_equal(3, team.points)
  end

  def test_update_points__lost
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
    team.update_points("lost")
    assert_equal(0, team.points)
  end
#
end
