require 'test_helper'

class PegContactsControllerTest < ActionController::TestCase
  setup do
    @peg_contact = peg_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peg_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peg_contact" do
    assert_difference('PegContact.count') do
      post :create, peg_contact: { email: @peg_contact.email, first_name: @peg_contact.first_name, last_name: @peg_contact.last_name, phone: @peg_contact.phone, title: @peg_contact.title }
    end

    assert_redirected_to peg_contact_path(assigns(:peg_contact))
  end

  test "should show peg_contact" do
    get :show, id: @peg_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peg_contact
    assert_response :success
  end

  test "should update peg_contact" do
    patch :update, id: @peg_contact, peg_contact: { email: @peg_contact.email, first_name: @peg_contact.first_name, last_name: @peg_contact.last_name, phone: @peg_contact.phone, title: @peg_contact.title }
    assert_redirected_to peg_contact_path(assigns(:peg_contact))
  end

  test "should destroy peg_contact" do
    assert_difference('PegContact.count', -1) do
      delete :destroy, id: @peg_contact
    end

    assert_redirected_to peg_contacts_path
  end
end
