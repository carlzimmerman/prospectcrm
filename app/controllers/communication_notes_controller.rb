class CommunicationNotesController < ApplicationController
  before_action :set_communication_note, only: [:show, :edit, :update, :destroy]

  # GET /communication_notes
  # GET /communication_notes.json
  def index
    @communication_notes = CommunicationNote.all
  end

  # GET /communication_notes/1
  # GET /communication_notes/1.json
  def show
  end

  # GET /communication_notes/new
  def new
    @communication_note = CommunicationNote.new
  end

  # GET /communication_notes/1/edit
  def edit
  end

  # POST /communication_notes
  # POST /communication_notes.json
  def create

    @peg_group = PegGroup.find(params[:peg_group_id])
    @communication_note = @peg_group.communication_note.create(communication_note_params)
    redirect_to peg_group_path(@peg_group)


    #respond_to do |format|
    #  if @communication_note.save
    #    format.json { render :show, status: :created, location: @communication_note }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @communication_note.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /communication_notes/1
  # PATCH/PUT /communication_notes/1.json
  def update
    respond_to do |format|
      if @communication_note.update(communication_note_params)
        format.html { redirect_to @communication_note, notice: 'Communication note was successfully updated.' }
        format.json { render :show, status: :ok, location: @communication_note }
      else
        format.html { render :edit }
        format.json { render json: @communication_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_notes/1
  # DELETE /communication_notes/1.json
  def destroy
    @communication_note.destroy
    respond_to do |format|
      format.html { redirect_to communication_notes_url, notice: 'Communication note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_note
      @communication_note = CommunicationNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_note_params
      params.require(:communication_note).permit(:type, :notes, :prospect_status)
    end
end
