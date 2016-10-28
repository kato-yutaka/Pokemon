require 'test_helper'

class Cha3sControllerTest < ActionController::TestCase
  setup do
    @cha3 = cha3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cha3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cha3" do
    assert_difference('Cha3.count') do
      post :create, cha3: { cha_id: @cha3.cha_id }
    end

    assert_redirected_to cha3_path(assigns(:cha3))
  end

  test "should show cha3" do
    get :show, id: @cha3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cha3
    assert_response :success
  end

  test "should update cha3" do
    patch :update, id: @cha3, cha3: { cha_id: @cha3.cha_id }
    assert_redirected_to cha3_path(assigns(:cha3))
  end

  test "should destroy cha3" do
    assert_difference('Cha3.count', -1) do
      delete :destroy, id: @cha3
    end

    assert_redirected_to cha3s_path
  end
end
