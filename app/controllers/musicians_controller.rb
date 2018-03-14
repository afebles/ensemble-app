class MusiciansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:location].present?
      sql_query = "city ILIKE :location"
      sql_query_2 = "location ILIKE :location"


      #@instrument = Instrument.where(name: params[:skill])

      #@skill = Skill.where(instrument: @instrument)
      @musicians = User.where(sql_query, location: "%#{params[:location]}%").where.not(id: current_user)
      @projects = Project.where(sql_query_2, location: "%#{params[:location]}%")
    else
      @musicians = User.all.where.not(id: current_user)
      @projects = Project.all
    end

  end
    # @musicians = User.where.not(latitude: nil, longitude: nil)

    # @markers = @musicians.map do |musician|
    #   {
    #     lat: musician.latitude,
    #     lng: musician.longitude,
    #     infoWindow: { content: render_to_string(partial: "/musicians/map_box", locals: { musician: musician }) }
    #   }
    # end

  def connect
    @musician = User.find(params[:id])
    @musician.friend_request(current_user)
    redirect_to musician_path(@musician)
  end

  def remove
    @musician = User.find(params[:id])
    @musician.remove_friend(current_user)
    redirect_to musician_path(@musician)
  end

  def block
    @musician = User.find(params[:id])
    current_user.block_friend(@musician)
    redirect_to musician_path(@musician)
  end

   def unblock
    @musician = User.find(params[:id])
    @musician.unblock_friend(current_user)
    redirect_to musician_path(@musician)
  end

  def show
    @musician = User.find(params[:id])
    @connections = @musician.friends
    @pending_friends = @musician.pending_friends

  end
# should move to dashboard profile
def accept
    @musician = User.find(params[:id])
    @musician.accept_request(current_user)
    redirect_to connections_path
end

 # almu coded: new and create
 def new
  @musician = User.new
end

def create
  @musician = User.new(musician_params)
  @musician.user = current_user
  if @musician.save
    redirect_to musician_path(@musician)
  else
    render :new
  end
end

def edit
  @musician = User.find(params[:id])
end

def update
  @musician = User.find(params[:id])
  if @musician.user != current_user
    flash[:alert] = "You can not edit this musician"
    # redirect_to @musician
  else
    if @musician.update(musician_params)
      flash[:alert] = "Your musician has been successfully updated"
      redirect_to @musician.user
    else
      render :edit
      render json: @musician.errors
    end
  end
end

def destroy
  @musician = User.find(params[:id])
  if @musician.user != current_user
    flash[:alert] = "You can not delete this musician"
    redirect_to @musician
  else
    if @musician.destroy
      flash[:alert] = "Your musician has been deleted"
      redirect_to musicians_path
    else
      render :show
      render json: @musician.errors
    end
  end
end

  #Aron coded "edit", "update" and "destroy" methods
  # def update
  #   @plan = Plan.find(params[:id])
  #   @plan.update(plan_params)
  #   redirect_to plan_path(@plan) => "Your post has been successfully updated"
  # end

  # def destroy
  #   @plan = Plan.find(params[:id])
  #   @plan.destroy
  #   redirect_to plans_path(@plan) => "Your plan has been successfully destroyed"
  # end


  private

  def plan_params
    params.require(:plan).permit(:title, :description, :location, :price, :picture)
  end

end

