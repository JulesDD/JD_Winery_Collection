require 'test_helper'

class VarietyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get variety_index_url
    assert_response :success
  end

  test "should get view" do
    get variety_view_url
    assert_response :success
  end

end
