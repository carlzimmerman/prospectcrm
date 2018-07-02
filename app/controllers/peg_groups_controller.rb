class PegGroupsController < ApplicationController
  before_action :set_peg_group, only: [:show, :edit, :update, :destroy]

  # GET /peg_groups
  # GET /peg_groups.json
  def index
    @peg_groups = PegGroup.all
  end

  # GET /peg_groups/1
  # GET /peg_groups/1.json
  def show
  end

  # GET /peg_groups/new
  def new
    @peg_group = PegGroup.new
  end

  # GET /peg_groups/1/edit
  def edit
  end

  # POST /peg_groups
  # POST /peg_groups.json
  def create
    @peg_group = PegGroup.new(peg_group_params)

    respond_to do |format|
      if @peg_group.save
        format.html { redirect_to @peg_group, notice: 'Peg group was successfully created.' }
        format.json { render :show, status: :created, location: @peg_group }
      else
        format.html { render :new }
        format.json { render json: @peg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peg_groups/1
  # PATCH/PUT /peg_groups/1.json
  def update
    respond_to do |format|
      if @peg_group.update(peg_group_params)
        format.html { redirect_to @peg_group, notice: 'Peg group was successfully updated.' }
        format.json { render :show, status: :ok, location: @peg_group }
      else
        format.html { render :edit }
        format.json { render json: @peg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peg_groups/1
  # DELETE /peg_groups/1.json
  def destroy
    @peg_group.destroy
    respond_to do |format|
      format.html { redirect_to peg_groups_url, notice: 'Peg group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peg_group
      @peg_group = PegGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peg_group_params
      params.require(:peg_group).permit(:firm_name, :website)
    end
end
