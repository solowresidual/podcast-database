class Review < ApplicationRecord
  belongs_to :user
  belongs_to :episode
  after_save :update_average_rating

  private

  def update_average_rating
    episode = self.episode
    average_rating = episode.reviews.average(:rating).round
    episode.update_attributes(average_rating: average_rating)
  end
end
