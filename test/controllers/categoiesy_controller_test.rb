require 'test_helper'

class CategoiesyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categoiesy_index_url
    assert_response :success
  end

  test "should get show" do
    get categoiesy_show_url
    assert_response :success
  end

  test "should get no-test-framework" do
    get categoiesy_no-test-framework_url
    assert_response :success
  end

end
