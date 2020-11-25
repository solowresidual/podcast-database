class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  layout "home"

  def home
    @episodes = Episode.first(6)
  end
end
