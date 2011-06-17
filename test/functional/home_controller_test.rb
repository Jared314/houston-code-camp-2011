require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get speakers" do
    get :speakers
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

end
