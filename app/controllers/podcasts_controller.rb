class PodcastsController < ApplicationController
  def show
    @podcast = Podcast.find(params[:id])
    @episodes = @podcast.episodes
  end
end
