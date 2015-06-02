require 'test_helper'

class VenueUsersControllerTest < ActionController::TestCase
  setup do
    @venue_user = venue_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_user" do
    assert_difference('VenueUser.count') do
      post :create, venue_user: {  }
    end

    assert_redirected_to venue_user_path(assigns(:venue_user))
  end

  test "should show venue_user" do
    get :show, id: @venue_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue_user
    assert_response :success
  end

  test "should update venue_user" do
    patch :update, id: @venue_user, venue_user: {  }
    assert_redirected_to venue_user_path(assigns(:venue_user))
  end

  test "should destroy venue_user" do
    assert_difference('VenueUser.count', -1) do
      delete :destroy, id: @venue_user
    end

    assert_redirected_to venue_users_path
  end
end
