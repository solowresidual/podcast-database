class AddSpotifyIdToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :spotify_id, :string
  end
end
