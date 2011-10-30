require 'test_helper'

class SpecialEventsControllerTest < ActionController::TestCase
  setup do
    @special_event = special_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_event" do
    assert_difference('SpecialEvent.count') do
      post :create, :special_event => @special_event.attributes
    end

    assert_redirected_to special_event_path(assigns(:special_event))
  end

  test "should show special_event" do
    get :show, :id => @special_event.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @special_event.to_param
    assert_response :success
  end

  test "should update special_event" do
    put :update, :id => @special_event.to_param, :special_event => @special_event.attributes
    assert_redirected_to special_event_path(assigns(:special_event))
  end

  test "should destroy special_event" do
    assert_difference('SpecialEvent.count', -1) do
      delete :destroy, :id => @special_event.to_param
    end

    assert_redirected_to special_events_path
  end
end
