require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get home_top_url
    assert_response :success
  end

  test "should get registration_select" do
    get home_registration_select_url
    assert_response :success
  end

  test "should get session_select" do
    get home_session_select_url
    assert_response :success
  end
end
