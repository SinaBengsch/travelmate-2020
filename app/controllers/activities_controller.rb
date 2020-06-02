class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @activities = Activity.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end

  def show
    @activity = Activity.find(params[:id])
    # @booking = Booking.new
  end

  # def new
  #   @bike = Bike.new
  # end

  # def create
  #   @bike = Bike.new(bikes_params)
  #   @bike.user = current_user
  #   if @bike.save
  #     redirect_to bikes_path
  #   else
  #     render :new
  #   end
  # end
end
