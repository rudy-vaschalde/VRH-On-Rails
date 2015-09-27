require 'test_helper'

class RanksControllerTest < ActionController::TestCase
  setup do
    @rank = ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rank" do
    assert_difference('Rank.count') do
      post :create, rank: { defeat: @rank.defeat, defeatOT: @rank.defeatOT, nul: @rank.nul, win: @rank.win, winOT: @rank.winOT }
    end

    assert_redirected_to rank_path(assigns(:rank))
  end

  test "should show rank" do
    get :show, id: @rank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rank
    assert_response :success
  end

  test "should update rank" do
    patch :update, id: @rank, rank: { defeat: @rank.defeat, defeatOT: @rank.defeatOT, nul: @rank.nul, win: @rank.win, winOT: @rank.winOT }
    assert_redirected_to rank_path(assigns(:rank))
  end

  test "should destroy rank" do
    assert_difference('Rank.count', -1) do
      delete :destroy, id: @rank
    end

    assert_redirected_to ranks_path
  end
end
