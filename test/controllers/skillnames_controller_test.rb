require 'test_helper'

class SkillnamesControllerTest < ActionController::TestCase
  setup do
    @skillname = skillnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skillname" do
    assert_difference('Skillname.count') do
      post :create, skillname: { eff: @skillname.eff, name: @skillname.name, power: @skillname.power }
    end

    assert_redirected_to skillname_path(assigns(:skillname))
  end

  test "should show skillname" do
    get :show, id: @skillname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skillname
    assert_response :success
  end

  test "should update skillname" do
    patch :update, id: @skillname, skillname: { eff: @skillname.eff, name: @skillname.name, power: @skillname.power }
    assert_redirected_to skillname_path(assigns(:skillname))
  end

  test "should destroy skillname" do
    assert_difference('Skillname.count', -1) do
      delete :destroy, id: @skillname
    end

    assert_redirected_to skillnames_path
  end
end
