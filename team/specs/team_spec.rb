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
    team.set_coach("Jose Mourinho")
    assert_equal("Jose Mourinho", team.coach)
  end

#
end
