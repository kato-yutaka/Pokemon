require 'test_helper'

class PokedexesControllerTest < ActionController::TestCase
  setup do
    @pokedex = pokedexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokedexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokedex" do
    assert_difference('Pokedex.count') do
      post :create, pokedex: { atk: @pokedex.atk, def: @pokedex.def, eco: @pokedex.eco, egg_id: @pokedex.egg_id, hp: @pokedex.hp, name: @pokedex.name, pic: @pokedex.pic, pic_data: @pokedex.pic_data, satk: @pokedex.satk, sdef: @pokedex.sdef, spd: @pokedex.spd, type_id: @pokedex.type_id }
    end

    assert_redirected_to pokedex_path(assigns(:pokedex))
  end

  test "should show pokedex" do
    get :show, id: @pokedex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokedex
    assert_response :success
  end

  test "should update pokedex" do
    patch :update, id: @pokedex, pokedex: { atk: @pokedex.atk, def: @pokedex.def, eco: @pokedex.eco, egg_id: @pokedex.egg_id, hp: @pokedex.hp, name: @pokedex.name, pic: @pokedex.pic, pic_data: @pokedex.pic_data, satk: @pokedex.satk, sdef: @pokedex.sdef, spd: @pokedex.spd, type_id: @pokedex.type_id }
    assert_redirected_to pokedex_path(assigns(:pokedex))
  end

  test "should destroy pokedex" do
    assert_difference('Pokedex.count', -1) do
      delete :destroy, id: @pokedex
    end

    assert_redirected_to pokedexes_path
  end
end
