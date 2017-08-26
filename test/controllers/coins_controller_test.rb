require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest

  test "should get coins" do
    get '/coins'
    assert_response :success
  end
end
