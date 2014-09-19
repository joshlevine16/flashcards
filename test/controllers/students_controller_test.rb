require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get manage_cards" do
    get :manage_cards
    assert_response :success
  end

  test "should get progress" do
    get :progress
    assert_response :success
  end

end
