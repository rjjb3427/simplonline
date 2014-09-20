require 'test_helper'

class StaticControllerTest < ActionController::TestCase

  test "welcome" do
    get :welcome
    assert_response :success
  end

  test "legal" do
    get :legal
    assert_response :success
  end

  test "contact" do
    get :contact
    assert_response :success
  end

  test "dashboard" do
    user = FactoryGirl.create(:user, remote: false)
    session[:user_id] = user.id
    get :dashboard
    assert_response :success
    assert_not_nil assigns(:last_definitions)
  end
end
