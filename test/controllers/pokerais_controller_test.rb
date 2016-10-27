require 'test_helper'

class PokeraisControllerTest < ActionController::TestCase
  setup do
    @pokerai = pokerais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokerais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokerai" do
    assert_difference('Pokerai.count') do
      post :create, pokerai: { cha_id: @pokerai.cha_id, com_id: @pokerai.com_id, ex: @pokerai.ex, name: @pokerai.name, per_id: @pokerai.per_id, pokedex_id: @pokerai.pokedex_id, raistag_id: @pokerai.raistag_id, title: @pokerai.title, wepon_id: @pokerai.wepon_id }
    end

    assert_redirected_to pokerai_path(assigns(:pokerai))
  end

  test "should show pokerai" do
    get :show, id: @pokerai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokerai
    assert_response :success
  end

  test "should update pokerai" do
    patch :update, id: @pokerai, pokerai: { cha_id: @pokerai.cha_id, com_id: @pokerai.com_id, ex: @pokerai.ex, name: @pokerai.name, per_id: @pokerai.per_id, pokedex_id: @pokerai.pokedex_id, raistag_id: @pokerai.raistag_id, title: @pokerai.title, wepon_id: @pokerai.wepon_id }
    assert_redirected_to pokerai_path(assigns(:pokerai))
  end

  test "should destroy pokerai" do
    assert_difference('Pokerai.count', -1) do
      delete :destroy, id: @pokerai
    end

    assert_redirected_to pokerais_path
  end
end
