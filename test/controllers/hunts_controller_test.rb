require 'test_helper'

class HuntsControllerTest < ActionController::TestCase
  setup do
    @hunt = hunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hunt" do
    assert_difference('Hunt.count') do
      post :create, hunt: { level: @hunt.level, name: @hunt.name, steal: @hunt.steal, strategy: @hunt.strategy, string: @hunt.string }
    end

    assert_redirected_to hunt_path(assigns(:hunt))
  end

  test "should show hunt" do
    get :show, id: @hunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hunt
    assert_response :success
  end

  test "should update hunt" do
    patch :update, id: @hunt, hunt: { level: @hunt.level, name: @hunt.name, steal: @hunt.steal, strategy: @hunt.strategy, string: @hunt.string }
    assert_redirected_to hunt_path(assigns(:hunt))
  end

  test "should destroy hunt" do
    assert_difference('Hunt.count', -1) do
      delete :destroy, id: @hunt
    end

    assert_redirected_to hunts_path
  end
end
