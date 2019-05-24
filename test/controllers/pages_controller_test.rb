require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get pages" do
    get api_pages_url
    assert_response :success
  end

end
