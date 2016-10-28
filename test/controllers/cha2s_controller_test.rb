require 'test_helper'

class Cha2sControllerTest < ActionController::TestCase
  setup do
    @cha2 = cha2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cha2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cha2" do
    assert_difference('Cha2.count') do
      post :create, cha2: { cha_id: @cha2.cha_id }
    end

    assert_redirected_to cha2_path(assigns(:cha2))
  end

  test "should show cha2" do
    get :show, id: @cha2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cha2
    assert_response :success
  end

  test "should update cha2" do
    patch :update, id: @cha2, cha2: { cha_id: @cha2.cha_id }
    assert_redirected_to cha2_path(assigns(:cha2))
  end

  test "should destroy cha2" do
    assert_difference('Cha2.count', -1) do
      delete :destroy, id: @cha2
    end

    assert_redirected_to cha2s_path
  end
end
