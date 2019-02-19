require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | Members only club"
  end

  test "should get login" do
    get login_path
    assert_response :success
    assert_select "title", "Login | Members only club"
  end


end
