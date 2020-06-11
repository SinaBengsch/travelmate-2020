class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @activities = Activity.all.sample(4)
  end

  def dashboard
    @activities = Activity.all
  end
end
