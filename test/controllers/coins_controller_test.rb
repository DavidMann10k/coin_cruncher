require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest

  test "should get coin_list" do
    get '/coins'
    assert_response :success
  end
end
