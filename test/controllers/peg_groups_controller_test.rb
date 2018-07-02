require 'test_helper'

class PegGroupsControllerTest < ActionController::TestCase
  setup do
    @peg_group = peg_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peg_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peg_group" do
    assert_difference('PegGroup.count') do
      post :create, peg_group: { firm_name: @peg_group.firm_name, website: @peg_group.website }
    end

    assert_redirected_to peg_group_path(assigns(:peg_group))
  end

  test "should show peg_group" do
    get :show, id: @peg_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peg_group
    assert_response :success
  end

  test "should update peg_group" do
    patch :update, id: @peg_group, peg_group: { firm_name: @peg_group.firm_name, website: @peg_group.website }
    assert_redirected_to peg_group_path(assigns(:peg_group))
  end

  test "should destroy peg_group" do
    assert_difference('PegGroup.count', -1) do
      delete :destroy, id: @peg_group
    end

    assert_redirected_to peg_groups_path
  end
end
