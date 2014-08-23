require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "show" do
    user = FactoryGirl.create(:user)
    get :show, id: user.id
    assert_response :success
    assert_equal user, assigns(:user)
  end

end