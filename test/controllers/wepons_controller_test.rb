require 'test_helper'

class WeponsControllerTest < ActionController::TestCase
  setup do
    @wepon = wepons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wepons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wepon" do
    assert_difference('Wepon.count') do
      post :create, wepon: { eff: @wepon.eff, name: @wepon.name }
    end

    assert_redirected_to wepon_path(assigns(:wepon))
  end

  test "should show wepon" do
    get :show, id: @wepon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wepon
    assert_response :success
  end

  test "should update wepon" do
    patch :update, id: @wepon, wepon: { eff: @wepon.eff, name: @wepon.name }
    assert_redirected_to wepon_path(assigns(:wepon))
  end

  test "should destroy wepon" do
    assert_difference('Wepon.count', -1) do
      delete :destroy, id: @wepon
    end

    assert_redirected_to wepons_path
  end
end
