class ChangeSpotifyTokenInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :spotify_token, :spotify_hash
  end
end
