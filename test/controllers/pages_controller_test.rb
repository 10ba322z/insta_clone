require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "Insta_clone"
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

end
