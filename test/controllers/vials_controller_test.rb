require 'test_helper'

class VialsControllerTest < ActionController::TestCase
  setup do
    @vial = vials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vial" do
    assert_difference('Vial.count') do
      post :create, vial: {  }
    end

    assert_redirected_to vial_path(assigns(:vial))
  end

  test "should show vial" do
    get :show, id: @vial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vial
    assert_response :success
  end

  test "should update vial" do
    patch :update, id: @vial, vial: {  }
    assert_redirected_to vial_path(assigns(:vial))
  end

  test "should destroy vial" do
    assert_difference('Vial.count', -1) do
      delete :destroy, id: @vial
    end

    assert_redirected_to vials_path
  end
end
