class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @activities = Activity.all
    if params[:search].present?
      if params[:search][:location].present?
        @activities = @activities.where("address ILIKE ?", "%#{params[:search][:location]}%")
        # response = HTTParty.get("https://api.unsplash.com/photos/?client_id=XETNGaDE5ETAk3lyib95JriLrBe_v9rfmn6ISElKAHc&query=%#{params[:search][:location]}%")
        # raise
      end

      if params[:search][:start_date].present?
        @activities = @activities.where("start_date >= ?", params[:search][:start_date])
      end

      if params[:search][:end_date].present?
        @activities = @activities.where("end_date <= ?", params[:search][:end_date])
      end
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activities_params)
    @activity.user = current_user
    if @activity.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def activities_params
    params.require(:activity).permit(:name, :description, :address, :start_date, :end_date, :photo)
  end
end
