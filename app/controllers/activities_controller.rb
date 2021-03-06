class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @location = params[:search][:location].try(:upcase) if params[:search]
    @activities = Activity.all
    @categories = Category.all
    @new_bookmark = Bookmark.new
    if params[:search].present?
      if params[:search][:category].present?
        category = Category.find(params[:search][:category].to_i)
        @activities = category.activities
      end

      if params[:search][:location].present?
        @activities = @activities.geocoded

        @activities = @activities.where("address ILIKE ?", "%#{params[:search][:location]}%")
      end

      if params[:search][:start_date].present?
        params[:search][:start_date].gsub!(/ to.*/, '')
        @activities = @activities.where("start_date >= ?", params[:search][:start_date])
      end

      if params[:search][:end_date].present?
        @activities = @activities.where("end_date <= ?", params[:search][:end_date])
      end

    end
    if @activities.present?
      @markers = @activities.map do |activity|
        {
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "activities/map_box", locals: { activity: activity })
        }
      end
    end
  end

  def show
    @activity = Activity.find(params[:id])
    if current_user.bookmarks.find_by(activity: @activity).nil?
      @new_bookmark = Bookmark.new
    else
      @bookmark = current_user.bookmarks.find_by(activity: @activity)
    end
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
