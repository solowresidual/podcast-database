class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "home"

  def home
    @popular_episodes = Episode.first(10)
    #@popular_episodes = Episode.where('average_rating >= 4').limit(6).order('average_rating DESC')
  end
end
