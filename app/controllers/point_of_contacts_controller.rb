class PointOfContactsController < ApplicationController
  def create
    @peg_group = PegGroup.find(params[:peg_group_id])
    @point_of_contact = @peg_group.point_of_contacts.create(point_of_contact_params)
    redirect_to peg_group_path(@peg_group)
  end

private
  def point_of_contact_params
    params.require(:point_of_contact).permit(:first_name, :last_name, :title, :email, :phone)
  end
end
