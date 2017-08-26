require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  test "should get index" do
    get '/'
    assert_response :success
  end

  test "should get portfolio" do
    sign_in users(:one)
    get '/portfolio'
    asset_response :success
  end

  test "should get transactions" do
    get '/transactions'
    asset_response :success
  end
end
