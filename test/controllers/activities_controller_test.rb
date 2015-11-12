require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, params: { activity: { title: @activity.title } }
    end

    assert_response 201
  end

  test "should show activity" do
    get :show, params: { id: @activity }
    assert_response :success
  end

  test "should update activity" do
    patch :update, params: { id: @activity, activity: { title: @activity.title } }
    assert_response 200
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, params: { id: @activity }
    end

    assert_response 204
  end
end
