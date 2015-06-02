require 'test_helper'

class VenueRolesControllerTest < ActionController::TestCase
  setup do
    @venue_role = venue_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venue_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue_role" do
    assert_difference('VenueRole.count') do
      post :create, venue_role: {  }
    end

    assert_redirected_to venue_role_path(assigns(:venue_role))
  end

  test "should show venue_role" do
    get :show, id: @venue_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue_role
    assert_response :success
  end

  test "should update venue_role" do
    patch :update, id: @venue_role, venue_role: {  }
    assert_redirected_to venue_role_path(assigns(:venue_role))
  end

  test "should destroy venue_role" do
    assert_difference('VenueRole.count', -1) do
      delete :destroy, id: @venue_role
    end

    assert_redirected_to venue_roles_path
  end
end
