class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @participants = Participant.all
  end

  def create
    @project = Project.find(params[:project_id])
    @participant = Participant.new
    @participant.user = current_user
    @participant.project = @project
    if @participant.save
      redirect_to project_path(@project)
    else
      redirect_to project_path(@project)
    end
  end



  # def destroy
  #   @participant = Participant.find(params[:id])
  #   if @participant.user != current_user
  #     flash[:alert] = "You can not delete this participant"
  #     redirect_to @participant
  #   else
  #     if @participant.destroy
  #       flash[:alert] = "Your participant has been deleted"
  #       redirect_to participants_path
  #     else
  #       render :show
  #       render json: @participant.errors
  #     end
  #   end
  # end




  # private

  # def participant_params
  #   params.require(:participant).permit()
  # end

end




