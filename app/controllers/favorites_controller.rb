class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @user = current_user
    @episode = Episode.find(params[:episode_id])

    @favorite.user = @user
    @favorite.episode = @episode

    if @favorite.save
      redirect_to epside_path(@episode)
    else
      render 'episodes/show'
    end
  end
end
