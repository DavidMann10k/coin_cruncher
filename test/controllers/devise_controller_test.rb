require 'test_helper'

# ROUTES
# ===================================================================================
#                   Prefix Verb   URI Pattern                       Controller#Action
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
#                          POST   /users/password(.:format)         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#        user_registration PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#                          POST   /users(.:format)                  devise/registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)     devise/confirmations#show
#                          POST   /users/confirmation(.:format)     devise/confirmations#create

class DeviseControllerTest < ActionDispatch::IntegrationTest

  test "should get sign in" do
    get new_user_session_path
    assert_response :success
  end

  test "should create user" do
    get new_user_registration_path
    assert_response :success

    assert_difference('User.count') do
      post '/users',
        params: { "user"=>{
          "email"=>"user@example.com",
          "password"=>"Please10",
          "password_confirmation"=>"Please10"
          }
        }
      assert_response :redirect
      follow_redirect!
      assert_response :success
    end
  end

  # TODO: Figure out what's wrong with this; it should fail
  test 'should sign in user' do
    get new_user_session_path
    assert_response :success

    post user_session_path,
      params: { "user"=>{
          "email"=>"user@example.com",
          "password"=>"Please10"
        }
      }

    assert_response :success, @response.body
  end

  test 'should sign user out' do

  end
end
