require 'test_helper'

class RegionMadeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get region_made_index_url
    assert_response :success
  end

  test "should get view" do
    get region_made_view_url
    assert_response :success
  end

end
