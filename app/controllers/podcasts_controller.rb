class PodcastsController < ApplicationController
  skip_before_action :authenticate_user! , only: :index
  def show
    @podcast = Podcast.find(params[:id])
    @episodes = @podcast.episodes
  end

  def index
    if params[ :query ]
      @podcasts = Podcast.search_by_name_and_description(params[ :query])
    else
      @podcasts = Podcast.all
    end
  end
end
