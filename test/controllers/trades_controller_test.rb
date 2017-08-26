require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest

  test 'should get new trade' do
    sign_in users(:one)
    get '/transactions/new'
    assert_response :success
  end

  test "should get trades" do
    sign_in users(:one)
    get '/transactions'
    assert_response :success
  end

  test "should post trades" do
    sign_in users(:one)
    post '/transactions',
      params: {  
        "trade"=>{
          "credit_attributes"=>{"name"=>"BTC", "quantity"=>"1"},
          "debit_attributes"=>{"name"=>"USD", "quantity"=>"4000"}
        }
      }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
