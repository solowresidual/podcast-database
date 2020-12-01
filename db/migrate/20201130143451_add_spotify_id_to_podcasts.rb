class AddSpotifyIdToPodcasts < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :spotify_id, :string
  end
end
