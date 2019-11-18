require 'test_helper'

class ProvinceMadeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get province_made_index_url
    assert_response :success
  end

  test "should get view" do
    get province_made_view_url
    assert_response :success
  end

end
