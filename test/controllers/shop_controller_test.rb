require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get accessories" do
    get shop_accessories_url
    assert_response :success
  end

  test "should get books" do
    get shop_books_url
    assert_response :success
  end

end
