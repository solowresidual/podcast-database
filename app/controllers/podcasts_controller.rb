class PodcastsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
    @episodes = @podcast.episodes
  end

end
