require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_setting" do
    get admins_admin_setting_url
    assert_response :success
  end

  test "should get member_index" do
    get admins_member_index_url
    assert_response :success
  end

  test "should get member_setting" do
    get admins_member_setting_url
    assert_response :success
  end
end
