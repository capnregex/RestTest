require 'test_helper'

class HoundsControllerTest < ActionController::TestCase
  setup do
    @hound = hounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hound" do
    assert_difference('Hound.count') do
      post :create, :hound => @hound.attributes
    end

    assert_redirected_to hound_path(assigns(:hound))
  end

  test "should show hound" do
    get :show, :id => @hound.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hound.to_param
    assert_response :success
  end

  test "should update hound" do
    put :update, :id => @hound.to_param, :hound => @hound.attributes
    assert_redirected_to hound_path(assigns(:hound))
  end

  test "should destroy hound" do
    assert_difference('Hound.count', -1) do
      delete :destroy, :id => @hound.to_param
    end

    assert_redirected_to hounds_path
  end
end
