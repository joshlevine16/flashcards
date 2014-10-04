require 'test_helper'

class PairingsControllerTest < ActionController::TestCase
  test "should get forgot" do
    get :forgot
    assert_response :success
  end

  test "should get hard" do
    get :hard
    assert_response :success
  end

  test "should get good" do
    get :good
    assert_response :success
  end

  test "should get easy" do
    get :easy
    assert_response :success
  end

end
