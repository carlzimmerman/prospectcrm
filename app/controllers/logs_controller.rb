class LogsController < ApplicationController
  def create
    @peg_group = PegGroup.find(params[:peg_group_id])
    @log = @peg_group.logs.create(log_params)
    redirect_to peg_group_path(@peg_group)
  end

  private
    def log_params
      params.require(:log).permit(:contact_type, :notes, :status)
    end

end
