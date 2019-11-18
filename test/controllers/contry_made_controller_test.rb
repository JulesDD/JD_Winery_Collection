require 'test_helper'

class ContryMadeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contry_made_index_url
    assert_response :success
  end

  test "should get view" do
    get contry_made_view_url
    assert_response :success
  end

end
