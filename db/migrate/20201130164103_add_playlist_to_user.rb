class AddPlaylistToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :spotify_playlist_id, :string
  end
end
