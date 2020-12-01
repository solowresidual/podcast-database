class ChangeSpotifyTokenTypeInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :spotify_hash, :text
  end
end
