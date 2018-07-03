class LogsController < ApplicationController
  def create
    @peg_group = PegGroup.find(params[:peg_group_id])
    @log = @peg_group.logs.create(log_params)
    redirect_to article_path(@article)
  end

  private
    def log_params
      params.require(:log).permit(:type, :note, :status)
    end

end
