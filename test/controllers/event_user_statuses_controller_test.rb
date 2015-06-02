require 'test_helper'

class EventUserStatusesControllerTest < ActionController::TestCase
  setup do
    @event_user_status = event_user_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_user_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_user_status" do
    assert_difference('EventUserStatus.count') do
      post :create, event_user_status: {  }
    end

    assert_redirected_to event_user_status_path(assigns(:event_user_status))
  end

  test "should show event_user_status" do
    get :show, id: @event_user_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_user_status
    assert_response :success
  end

  test "should update event_user_status" do
    patch :update, id: @event_user_status, event_user_status: {  }
    assert_redirected_to event_user_status_path(assigns(:event_user_status))
  end

  test "should destroy event_user_status" do
    assert_difference('EventUserStatus.count', -1) do
      delete :destroy, id: @event_user_status
    end

    assert_redirected_to event_user_statuses_path
  end
end
