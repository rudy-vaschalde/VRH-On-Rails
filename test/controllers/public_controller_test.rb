require 'test_helper'

class PublicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get index even when db is not initialized" do
    Championship.destroy_all
    Season.destroy_all
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get nat2" do
    get :nat2
    assert_response :success
  end

  test "should get nat4" do
    get :nat4
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
