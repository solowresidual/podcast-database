class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @user = current_user
    @episode = Episode.find(params[:episode_id])

    @favorite.user = @user
    @favorite.episode = @episode

    if @favorite.save
      redirect_to episode_path(@episode)
    else
      render 'episodes/show'
    end
  end

  def index
    @favorites = Favorite.where(user: current_user)
  end

end
