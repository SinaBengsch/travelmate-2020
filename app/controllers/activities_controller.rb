class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @activities = Activity.all
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
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
