require 'test_helper'

class Cha1sControllerTest < ActionController::TestCase
  setup do
    @cha1 = cha1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cha1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cha1" do
    assert_difference('Cha1.count') do
      post :create, cha1: { cha_id: @cha1.cha_id }
    end

    assert_redirected_to cha1_path(assigns(:cha1))
  end

  test "should show cha1" do
    get :show, id: @cha1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cha1
    assert_response :success
  end

  test "should update cha1" do
    patch :update, id: @cha1, cha1: { cha_id: @cha1.cha_id }
    assert_redirected_to cha1_path(assigns(:cha1))
  end

  test "should destroy cha1" do
    assert_difference('Cha1.count', -1) do
      delete :destroy, id: @cha1
    end

    assert_redirected_to cha1s_path
  end
end
