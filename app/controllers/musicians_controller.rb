class MusiciansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query"
      @musicians = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @musicians = User.all
    end

    @musicians = User.where.not(latitude: nil, longitude: nil)

    @markers = @musicians.map do |musician|
      {
        lat: musician.latitude,
        lng: musician.longitude,
        infoWindow: { content: render_to_string(partial: "/musicians/map_box", locals: { musician: musician }) }
      }
    end
  end

  def show
    @musician = User.find(params[:id])
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
    redirect_to @musician
  else
    if @musician.update(musician_params)
      flash[:alert] = "Your musician has been successfully updated"
      redirect_to @musician
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
