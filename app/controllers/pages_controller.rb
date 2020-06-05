class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @activities = Activity.all.sample(3)
  end

  def dashboard
    @activities = Activity.all
  end
end
