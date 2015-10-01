require 'test_helper'

class GoalTest < ActiveSupport::TestCase

  setup do
    @game = games(:one)
    @player = players(:one)
    @other_team = teams(:two)
  end

  test "should create goal when player belongs to team" do
    goal = Goal.create(player: @player, team: @player.team, game: @game)
    assert goal.valid?
  end

  test "should not create goal when player doesn't belong to the team" do
    goal = Goal.create(player: @player, team: @other_team, game: @game)
    assert_not goal.valid?
    assert_equal goal.errors[:player_id], "ne fait pas parti de l'équipe"
  end

  test "should create goal when player is not set" do
    goal = Goal.create(team: @player.team, game: @game)
    assert goal.valid?
  end

end
