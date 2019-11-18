require 'test_helper'

class WineryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get winery_index_url
    assert_response :success
  end

  test "should get view" do
    get winery_view_url
    assert_response :success
  end

end
