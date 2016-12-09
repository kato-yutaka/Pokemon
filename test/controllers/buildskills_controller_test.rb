require 'test_helper'

class BuildskillsControllerTest < ActionController::TestCase
  setup do
    @buildskill = buildskills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buildskills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buildskill" do
    assert_difference('Buildskill.count') do
      post :create, buildskill: { eff: @buildskill.eff, name: @buildskill.name, party_id: @buildskill.party_id, power: @buildskill.power }
    end

    assert_redirected_to buildskill_path(assigns(:buildskill))
  end

  test "should show buildskill" do
    get :show, id: @buildskill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buildskill
    assert_response :success
  end

  test "should update buildskill" do
    patch :update, id: @buildskill, buildskill: { eff: @buildskill.eff, name: @buildskill.name, party_id: @buildskill.party_id, power: @buildskill.power }
    assert_redirected_to buildskill_path(assigns(:buildskill))
  end

  test "should destroy buildskill" do
    assert_difference('Buildskill.count', -1) do
      delete :destroy, id: @buildskill
    end

    assert_redirected_to buildskills_path
  end
end
