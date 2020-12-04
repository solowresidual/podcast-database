class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user: current_user, finished: false)
    @finished = Favorite.where(user: current_user, finished: true)
  end

  def create
    create_spotify_playlist if current_user.spotify_playlist_id.nil?
    @favorite = Favorite.new
    @user = current_user
    @episode = Episode.find(params[:episode_id])

    @favorite.user = @user
    @favorite.episode = @episode

    if @favorite.save
      add_spotify_episode(@episode)
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
    remove_spotify_episode(@favorite.episode)
    @favorite.destroy
    redirect_to back_with_anchor anchor: @favorite.episode.id
  end

  private

  def back_with_anchor(anchor: '')
    "#{request.referrer}##{anchor}"
  end

  def create_spotify_playlist
    if current_user.provider == 'spotify'
      RSpotify.authenticate(ENV['SPOTIFY_ID'], ENV['SPOTIFY_SECRET'])
      spotify_user = RSpotify::User.new(current_user.spotify_hash)
      playlist = spotify_user.create_playlist!('Podcast Database - Favorites', public: false)
      current_user.update_attributes(spotify_playlist_id: playlist.id)
    end
  end

  def find_spotify_playlist
    if current_user.provider == 'spotify'
      RSpotify.authenticate(ENV['SPOTIFY_ID'], ENV['SPOTIFY_SECRET'])
      RSpotify::User.new(current_user.spotify_hash)
      RSpotify::Playlist.find(current_user.username, current_user.spotify_playlist_id)
    end
  end

  def add_spotify_episode(episode)
    if current_user.provider == 'spotify'
      RSpotify::User.new(current_user.spotify_hash)
      find_spotify_playlist.add_tracks!(["spotify:episode:#{episode.spotify_id}"])
    end
  end

  def remove_spotify_episode(episode)
    if current_user.provider == 'spotify'
      # RSpotify.authenticate(ENV['SPOTIFY_ID'], ENV['SPOTIFY_SECRET'])
      # spotify_user = RSpotify::User.new(current_user.spotify_hash)
      # url = "https://api.spotify.com/v1/playlists/#{current_user.spotify_playlist_id}/tracks"

      # tracks = [{ "uri": "spotify:episode:#{episode.spotify_id}" }]

      # params = {
      #   method: :delete,
      #   url: URI.parse(url).to_s,
      #   headers: RSpotify::User.send(:oauth_header, spotify_user.id),
      #   payload: { tracks: tracks }
      # }

      # params[:payload] = params[:payload].to_json
      # RestClient::Request.execute(params)
      RSpotify::User.new(current_user.spotify_hash)
      all_tracks = find_spotify_playlist.tracks
      track = all_tracks.select { |item| item.id == episode.spotify_id }
      find_spotify_playlist.remove_tracks!(track)
    end
  end
end
