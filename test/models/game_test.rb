require 'test_helper'

class GameTest < ActiveSupport::TestCase
  setup do
    @game = games(:one)
  end

  test "home goals should return home team goals" do
    assert_equal @game.home_goals, Goal.where(game: @game, team: @game.home_team)
  end

  test "visitor goals should return visitor team goals" do
    assert_equal @game.visitor_goals, Goal.where(game: @game, team: @game.visitor_team)
  end
end
