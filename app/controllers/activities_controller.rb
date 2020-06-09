class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @activities = Activity.all
    @categories = Category.all
    if params[:search].present?
      if params[:search][:location].present?
        @activities = @activities.where("address ILIKE ?", "%#{params[:search][:location]}%")
      end

      if params[:search][:start_date].present?
        @activities = @activities.where("start_date >= ?", params[:search][:start_date])
      end

      if params[:search][:end_date].present?
        @activities = @activities.where("end_date <= ?", params[:search][:end_date])
      end
      if params[:search][:category].present?
        activity = Activity.find
        category = Category.find(params[:search][:category].to_i)[:name]
        @activities = @activities.where(category)
      raise
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
    params.require(:activity)
    .permit(
      :name,
      :description,
      :address,
      :start_date,
      :end_date,
      :photo,
      { category_ids: [] }
      )
  end
end
