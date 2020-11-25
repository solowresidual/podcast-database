class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show]

  def show
    @reviews = @episode.reviews
    @review = Review.new
    @favorite = Favorite.new
  end

  private

  def episode_params
    params.require(:episode).permit(:name, :description)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
