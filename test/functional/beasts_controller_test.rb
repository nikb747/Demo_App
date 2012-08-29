require 'test_helper'

class BeastsControllerTest < ActionController::TestCase
  setup do
    @beast = beasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beast" do
    assert_difference('Beast.count') do
      post :create, beast: @beast.attributes
    end

    assert_redirected_to beast_path(assigns(:beast))
  end

  test "should show beast" do
    get :show, id: @beast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beast
    assert_response :success
  end

  test "should update beast" do
    put :update, id: @beast, beast: @beast.attributes
    assert_redirected_to beast_path(assigns(:beast))
  end

  test "should destroy beast" do
    assert_difference('Beast.count', -1) do
      delete :destroy, id: @beast
    end

    assert_redirected_to beasts_path
  end
end
