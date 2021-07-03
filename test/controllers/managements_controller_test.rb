require "test_helper"

class ManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get managements_top_url
    assert_response :success
  end

  test "should get musers_index" do
    get managements_musers_index_url
    assert_response :success
  end

  test "should get shifts_index" do
    get managements_shifts_index_url
    assert_response :success
  end

  test "should get setting" do
    get managements_setting_url
    assert_response :success
  end
end
