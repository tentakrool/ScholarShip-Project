require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get static_pages_homepage_url
    assert_response :success
  end

  test "should get aboutus" do
    get static_pages_aboutus_url
    assert_response :success
  end

  test "should get contactus" do
    get static_pages_contactus_url
    assert_response :success
  end

end
