require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest

  test "should get coin_list" do
    get '/coin-list'
    asset_response :success
  end
end
