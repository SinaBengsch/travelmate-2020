class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @activities = Activity.where("address ILIKE ?", "%#{params[:query]}%")
    elsif params[:start_date].present? && params[:query].present?
      @activities = Activity.where("start_date >= ?", params[:start_date], "address ILIKE ?", "%#{params[:query]}%")
    elsif params[:end_date].present? && params[:query].present?
      @activities = Activity.where("end_date <= ?", params[:end_date], "address ILIKE ?", "%#{params[:query]}%")
    elsif params[:name].present? && params[:query].present?
      @activities = Activity.where(name: params[:name]).where("address ILIKE ?", "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
