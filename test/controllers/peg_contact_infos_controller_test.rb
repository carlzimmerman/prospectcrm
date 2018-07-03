require 'test_helper'

class PegContactInfosControllerTest < ActionController::TestCase
  setup do
    @peg_contact_info = peg_contact_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peg_contact_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peg_contact_info" do
    assert_difference('PegContactInfo.count') do
      post :create, peg_contact_info: { email: @peg_contact_info.email, first_name: @peg_contact_info.first_name, last_name: @peg_contact_info.last_name, phone: @peg_contact_info.phone, title: @peg_contact_info.title }
    end

    assert_redirected_to peg_contact_info_path(assigns(:peg_contact_info))
  end

  test "should show peg_contact_info" do
    get :show, id: @peg_contact_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peg_contact_info
    assert_response :success
  end

  test "should update peg_contact_info" do
    patch :update, id: @peg_contact_info, peg_contact_info: { email: @peg_contact_info.email, first_name: @peg_contact_info.first_name, last_name: @peg_contact_info.last_name, phone: @peg_contact_info.phone, title: @peg_contact_info.title }
    assert_redirected_to peg_contact_info_path(assigns(:peg_contact_info))
  end

  test "should destroy peg_contact_info" do
    assert_difference('PegContactInfo.count', -1) do
      delete :destroy, id: @peg_contact_info
    end

    assert_redirected_to peg_contact_infos_path
  end
end
