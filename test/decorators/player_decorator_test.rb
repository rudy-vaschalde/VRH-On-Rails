require 'test_helper'

class PlayerDecoratorTest < Draper::TestCase
  setup do
    @player = players(:barry)
  end

  test "full name has correct syntax" do
    assert_equal "Barry Allen", @player.full_name
  end

end
