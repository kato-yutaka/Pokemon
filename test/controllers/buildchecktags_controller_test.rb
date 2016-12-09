require 'test_helper'

class BuildchecktagsControllerTest < ActionController::TestCase
  setup do
    @buildchecktag = buildchecktags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buildchecktags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buildchecktag" do
    assert_difference('Buildchecktag.count') do
      post :create, buildchecktag: { buildtag_id: @buildchecktag.buildtag_id, pokebuild_id: @buildchecktag.pokebuild_id }
    end

    assert_redirected_to buildchecktag_path(assigns(:buildchecktag))
  end

  test "should show buildchecktag" do
    get :show, id: @buildchecktag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buildchecktag
    assert_response :success
  end

  test "should update buildchecktag" do
    patch :update, id: @buildchecktag, buildchecktag: { buildtag_id: @buildchecktag.buildtag_id, pokebuild_id: @buildchecktag.pokebuild_id }
    assert_redirected_to buildchecktag_path(assigns(:buildchecktag))
  end

  test "should destroy buildchecktag" do
    assert_difference('Buildchecktag.count', -1) do
      delete :destroy, id: @buildchecktag
    end

    assert_redirected_to buildchecktags_path
  end
end
