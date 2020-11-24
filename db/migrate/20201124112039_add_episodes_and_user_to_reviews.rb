class AddEpisodesAndUserToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :episode, null: false, foreign_key: true
    add_reference :reviews, :user, null: false, foreign_key: true
  end
end
