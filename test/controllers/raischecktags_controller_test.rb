require 'test_helper'

class RaischecktagsControllerTest < ActionController::TestCase
  setup do
    @raischecktag = raischecktags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raischecktags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raischecktag" do
    assert_difference('Raischecktag.count') do
      post :create, raischecktag: { pokerai_id: @raischecktag.pokerai_id, raistag_id: @raischecktag.raistag_id }
    end

    assert_redirected_to raischecktag_path(assigns(:raischecktag))
  end

  test "should show raischecktag" do
    get :show, id: @raischecktag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raischecktag
    assert_response :success
  end

  test "should update raischecktag" do
    patch :update, id: @raischecktag, raischecktag: { pokerai_id: @raischecktag.pokerai_id, raistag_id: @raischecktag.raistag_id }
    assert_redirected_to raischecktag_path(assigns(:raischecktag))
  end

  test "should destroy raischecktag" do
    assert_difference('Raischecktag.count', -1) do
      delete :destroy, id: @raischecktag
    end

    assert_redirected_to raischecktags_path
  end
end
