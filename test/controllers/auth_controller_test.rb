require 'test_helper'

class AuthControllerTest < ActionController::TestCase
  test "should get get_login_url" do
    get :get_login_url
    assert_response :success
  end

end
