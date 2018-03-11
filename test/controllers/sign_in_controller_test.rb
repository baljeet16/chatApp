require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get login," do
    get sign_in_login,_url
    assert_response :success
  end

  test "should get forget_password" do
    get sign_in_forget_password_url
    assert_response :success
  end

end
