require 'test_helper'

class PegsControllerTest < ActionController::TestCase
  setup do
    @peg = pegs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pegs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peg" do
    assert_difference('Peg.count') do
      post :create, peg: { firm_name: @peg.firm_name, website: @peg.website }
    end

    assert_redirected_to peg_path(assigns(:peg))
  end

  test "should show peg" do
    get :show, id: @peg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peg
    assert_response :success
  end

  test "should update peg" do
    patch :update, id: @peg, peg: { firm_name: @peg.firm_name, website: @peg.website }
    assert_redirected_to peg_path(assigns(:peg))
  end

  test "should destroy peg" do
    assert_difference('Peg.count', -1) do
      delete :destroy, id: @peg
    end

    assert_redirected_to pegs_path
  end
end
