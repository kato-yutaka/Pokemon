require 'test_helper'

class RaistagsControllerTest < ActionController::TestCase
  setup do
    @raistag = raistags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raistags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raistag" do
    assert_difference('Raistag.count') do
      post :create, raistag: { name: @raistag.name, pokerais_id: @raistag.pokerais_id }
    end

    assert_redirected_to raistag_path(assigns(:raistag))
  end

  test "should show raistag" do
    get :show, id: @raistag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raistag
    assert_response :success
  end

  test "should update raistag" do
    patch :update, id: @raistag, raistag: { name: @raistag.name, pokerais_id: @raistag.pokerais_id }
    assert_redirected_to raistag_path(assigns(:raistag))
  end

  test "should destroy raistag" do
    assert_difference('Raistag.count', -1) do
      delete :destroy, id: @raistag
    end

    assert_redirected_to raistags_path
  end
end
