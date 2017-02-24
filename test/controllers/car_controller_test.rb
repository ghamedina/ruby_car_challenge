require 'test_helper'

class CarControllerTest < ActionController::TestCase
  test "should get car_sim" do
    get :car_sim
    assert_response :success
  end

end
