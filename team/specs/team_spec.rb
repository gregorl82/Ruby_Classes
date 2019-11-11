require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TeamTests < MiniTest::Test

  def test_can_create_team
    team = Team.new("No Hope United",["Bob", "Mick", "Lee", "Dave", "Chas"],"Alex Ferguson")
  end

#
end
