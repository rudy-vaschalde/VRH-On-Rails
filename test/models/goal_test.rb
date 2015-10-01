require 'test_helper'

class GoalTest < ActiveSupport::TestCase

  setup do
    @game = games(:one)
    @player = players(:one)
    @other_team = teams(:two)
  end

  test "should create goal when scorer belongs to team" do
    goal = Goal.new scorer: @player, team: @player.team, game: @game
    assert goal.valid?
  end

  test "should not create goal when scorer doesn't belong to the team" do
    goal = Goal.new scorer: @player, team: @other_team, game: @game
    assert_not goal.valid?
    assert_equal ["ne fait pas parti de l'équipe"], goal.errors[:scorer_id]
  end


  test "should not create goal when passer doesn't belong to the team" do
    goal = Goal.new passer: @player, team: @other_team, game: @game
    assert_not goal.valid?
    assert_equal ["ne fait pas parti de l'équipe"], goal.errors[:passer_id]
  end

  test "should create goal when scorer is not set" do
    goal = Goal.new team: @player.team, game: @game
    assert goal.valid?
  end

end
