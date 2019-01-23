require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get gaia" do
    get static_pages_gaia_url
    assert_response :success
  end

end
