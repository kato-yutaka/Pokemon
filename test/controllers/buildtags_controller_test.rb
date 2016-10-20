require 'test_helper'

class BuildtagsControllerTest < ActionController::TestCase
  setup do
    @buildtag = buildtags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buildtags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buildtag" do
    assert_difference('Buildtag.count') do
      post :create, buildtag: { name: @buildtag.name, pokebuild_id: @buildtag.pokebuild_id }
    end

    assert_redirected_to buildtag_path(assigns(:buildtag))
  end

  test "should show buildtag" do
    get :show, id: @buildtag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buildtag
    assert_response :success
  end

  test "should update buildtag" do
    patch :update, id: @buildtag, buildtag: { name: @buildtag.name, pokebuild_id: @buildtag.pokebuild_id }
    assert_redirected_to buildtag_path(assigns(:buildtag))
  end

  test "should destroy buildtag" do
    assert_difference('Buildtag.count', -1) do
      delete :destroy, id: @buildtag
    end

    assert_redirected_to buildtags_path
  end
end
