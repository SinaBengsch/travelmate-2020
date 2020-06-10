class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def profile_params
  params.require(:profile).permit(:photo)
  end
end
