class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new
    @activity = Activity.find(params[:activity_id])
    @bookmark.activity = @activity
    @bookmark.user = current_user
    if @bookmark.save
      flash[:notice] = 'Bookmark save'
      redirect_to activities_path
    else
      render 'activities/show'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to activities_path
    flash[:notice] = 'Bookmark removed'
  end
end
