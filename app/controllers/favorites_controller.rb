class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user)
  end

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

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.toggle! :finished
    redirect_to favorites_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

end
