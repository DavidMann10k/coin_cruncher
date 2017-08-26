require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  test "should get transactions" do
    sign_in users(:one)
    get '/transactions'
    asset_response :success
  end
end
