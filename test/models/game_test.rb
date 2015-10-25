require 'test_helper'

class GameTest < ActiveSupport::TestCase
  setup do
    @game = games(:one)
    @barry = players(:barry)
    @diana = players(:diana)
    @hal_jordan = players(:hal_jordan)
  end

  test "home goals should return home team goals" do
    assert_equal 1, @game.home_goals.score
    assert_equal goals(:one), @game.home_goals.first
  end

  test "visitor goals should return visitor team goals" do
    assert_equal 1, @game.visitor_goals.score
    assert_equal goals(:three), @game.visitor_goals.first
  end

  test "a team scored a goal" do
    assert_difference "@game.goals.score", 1 do
      @game.score!(@game.home_team)
      @game.save!
    end
    assert_nil Goal.last.scorer
    assert_nil Goal.last.passer
  end

  test "a player scored a goal" do
    assert_difference "@game.goals.score", 1 do
      @game.score!(@game.home_team, @barry)
      @game.save!
    end
    assert @barry, Goal.last.scorer
    assert_nil Goal.last.passer
  end

  test "a player helped by a passer scored a goal" do
    assert_difference "@game.goals.score", 1 do
      @game.score!(@game.home_team, @barry, @hal_jordan)
      @game.save!
    end
    assert @barry, Goal.last.scorer
    assert @diana, Goal.last.passer
  end

  test "vrh scope returns Vorreppe games" do
      assert_equal 2, Game.vrh.count
  end

  test "next game returns the next game" do
    # Create a VRH N2 match
    @game =  Game.create!(visitor_team: teams(:one), home_team: teams(:three), match_day: 1.day.from_now)
    assert_equal @game, Game.next_n2
  end

  test "next game only takes VRH teams into account" do
    # Create a match with no VRH team
    @game =  Game.create!(visitor_team: teams(:two), home_team: teams(:four), match_day: 1.minute.from_now)
    assert_not_equal @game, Game.next_n2
    assert Game.next_n2.visitor_team == Team.n2 || Game.next_n2.home_team == Team.n2
  end
end
