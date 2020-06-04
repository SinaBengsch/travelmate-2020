class ProfilesController < ApplicationController

  def show
    @profile = User.find(params[:id])
  end

  def edit
  end

  def update
  end
end
