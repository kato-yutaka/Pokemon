require 'test_helper'

class PokebuildsControllerTest < ActionController::TestCase
  setup do
    @pokebuild = pokebuilds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokebuilds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokebuild" do
    assert_difference('Pokebuild.count') do
      post :create, pokebuild: { buildchecktag_id: @pokebuild.buildchecktag_id, ex: @pokebuild.ex, title: @pokebuild.title, user_id: @pokebuild.user_id }
    end

    assert_redirected_to pokebuild_path(assigns(:pokebuild))
  end

  test "should show pokebuild" do
    get :show, id: @pokebuild
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokebuild
    assert_response :success
  end

  test "should update pokebuild" do
    patch :update, id: @pokebuild, pokebuild: { buildchecktag_id: @pokebuild.buildchecktag_id, ex: @pokebuild.ex, title: @pokebuild.title, user_id: @pokebuild.user_id }
    assert_redirected_to pokebuild_path(assigns(:pokebuild))
  end

  test "should destroy pokebuild" do
    assert_difference('Pokebuild.count', -1) do
      delete :destroy, id: @pokebuild
    end

    assert_redirected_to pokebuilds_path
  end
end
