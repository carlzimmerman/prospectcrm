class PegContactInfosController < ApplicationController
  before_action :set_peg_contact_info, only: [:show, :edit, :update, :destroy]

  # GET /peg_contact_infos
  # GET /peg_contact_infos.json
  def index
    @peg_contact_infos = PegContactInfo.all
  end

  # GET /peg_contact_infos/1
  # GET /peg_contact_infos/1.json
  def show
  end

  # GET /peg_contact_infos/new
  def new
    @peg_contact_info = PegContactInfo.new
  end

  # GET /peg_contact_infos/1/edit
  def edit
  end

  # POST /peg_contact_infos
  # POST /peg_contact_infos.json
  def create
    @peg_contact_info = PegContactInfo.new(peg_contact_info_params)

    respond_to do |format|
      if @peg_contact_info.save
        format.html { redirect_to @peg_contact_info, notice: 'Peg contact info was successfully created.' }
        format.json { render :show, status: :created, location: @peg_contact_info }
      else
        format.html { render :new }
        format.json { render json: @peg_contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peg_contact_infos/1
  # PATCH/PUT /peg_contact_infos/1.json
  def update
    respond_to do |format|
      if @peg_contact_info.update(peg_contact_info_params)
        format.html { redirect_to @peg_contact_info, notice: 'Peg contact info was successfully updated.' }
        format.json { render :show, status: :ok, location: @peg_contact_info }
      else
        format.html { render :edit }
        format.json { render json: @peg_contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peg_contact_infos/1
  # DELETE /peg_contact_infos/1.json
  def destroy
    @peg_contact_info.destroy
    respond_to do |format|
      format.html { redirect_to peg_contact_infos_url, notice: 'Peg contact info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peg_contact_info
      @peg_contact_info = PegContactInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peg_contact_info_params
      params.require(:peg_contact_info).permit(:first_name, :last_name, :title, :email, :phone)
    end
end
