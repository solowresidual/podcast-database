class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show]
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @reviews = @episode.reviews
    @review = Review.new
    @favorite = Favorite.find_by(episode: @episode)
  end

  private

  def episode_params
    params.require(:episode).permit(:name, :description)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
