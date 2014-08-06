require 'test_helper'

class GeolocationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
