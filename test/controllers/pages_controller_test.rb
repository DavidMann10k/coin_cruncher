require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    get '/'
    assert_response :success
  end

  test "should get portfolio" do
    sign_in users(:one)
    get '/portfolio'
    assert_response :success
  end
end
