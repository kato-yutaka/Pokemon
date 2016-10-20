require 'test_helper'

class ChasControllerTest < ActionController::TestCase
  setup do
    @cha = chas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cha" do
    assert_difference('Cha.count') do
      post :create, cha: { ex: @cha.ex, kubun: @cha.kubun, name: @cha.name, pokedex_id: @cha.pokedex_id }
    end

    assert_redirected_to cha_path(assigns(:cha))
  end

  test "should show cha" do
    get :show, id: @cha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cha
    assert_response :success
  end

  test "should update cha" do
    patch :update, id: @cha, cha: { ex: @cha.ex, kubun: @cha.kubun, name: @cha.name, pokedex_id: @cha.pokedex_id }
    assert_redirected_to cha_path(assigns(:cha))
  end

  test "should destroy cha" do
    assert_difference('Cha.count', -1) do
      delete :destroy, id: @cha
    end

    assert_redirected_to chas_path
  end
end
