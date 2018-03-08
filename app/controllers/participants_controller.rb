class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @participant = Participant.new(participant_params)
    @participant.user = current_user
    if @participant.save
      redirect_to participant_path(@participant)
    else
      render :new
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
  #   params.require(:participant).permit(:title, :description, :location, :start_time, :end_time, :picture)
  # end

end




