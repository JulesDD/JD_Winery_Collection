require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_index_url
    assert_response :success
  end

  test "should get view" do
    get employee_view_url
    assert_response :success
  end

end
