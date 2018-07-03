require 'test_helper'

class CommunicationNotesControllerTest < ActionController::TestCase
  setup do
    @communication_note = communication_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communication_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create communication_note" do
    assert_difference('CommunicationNote.count') do
      post :create, communication_note: { notes: @communication_note.notes, prospect_status: @communication_note.prospect_status, type: @communication_note.type }
    end

    assert_redirected_to communication_note_path(assigns(:communication_note))
  end

  test "should show communication_note" do
    get :show, id: @communication_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @communication_note
    assert_response :success
  end

  test "should update communication_note" do
    patch :update, id: @communication_note, communication_note: { notes: @communication_note.notes, prospect_status: @communication_note.prospect_status, type: @communication_note.type }
    assert_redirected_to communication_note_path(assigns(:communication_note))
  end

  test "should destroy communication_note" do
    assert_difference('CommunicationNote.count', -1) do
      delete :destroy, id: @communication_note
    end

    assert_redirected_to communication_notes_path
  end
end
