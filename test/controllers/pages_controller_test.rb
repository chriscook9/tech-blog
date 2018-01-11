require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get donate" do
    get pages_donate_url
    assert_response :success
  end

end
