class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user: current_user, finished: false)
    @finished = Favorite.where(user: current_user, finished: true)
  end

  def create
    @favorite = Favorite.new
    @user = current_user
    @episode = Episode.find(params[:episode_id])

    @favorite.user = @user
    @favorite.episode = @episode

    if @favorite.save
      redirect_to back_with_anchor anchor: @episode.id
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
    redirect_to back_with_anchor anchor: @favorite.episode.id
  end

  private

  def back_with_anchor(anchor: '')
    "#{request.referrer}##{anchor}"
  end
end
