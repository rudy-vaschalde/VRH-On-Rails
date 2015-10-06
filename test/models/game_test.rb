require 'test_helper'

class GameTest < ActiveSupport::TestCase
  setup do
    @game = games(:one)
    @barry = players(:barry)
    @diana = players(:diana)
    @hal_jordan = players(:hal_jordan)
  end

  test "home goals should return home team goals" do
    assert_equal 1, @game.home_goals.count
    assert_equal goals(:one), @game.home_goals.first
  end

  test "visitor goals should return visitor team goals" do
    assert_equal 1, @game.visitor_goals.count
    assert_equal goals(:two), @game.visitor_goals.first
  end


  test "a team scored a goal" do
    assert_difference "@game.goals.count", 1 do
      @game.score(:home)
      @game.save!
    end
    assert_nil Goal.last.scorer
    assert_nil Goal.last.passer
  end

  test "a player scored a goal" do
    assert_difference "@game.goals.count", 1 do
      @game.score(:home, @barry)
      @game.save!
    end
    assert @barry, Goal.last.scorer
    assert_nil Goal.last.passer
  end

  test "a player helped by a passer scored a goal" do
    assert_difference "@game.goals.count", 1 do
      @game.score(:home, @barry, @hal_jordan)
      @game.save!
    end
    assert @barry, Goal.last.scorer
    assert @diana, Goal.last.passer
  end
end
