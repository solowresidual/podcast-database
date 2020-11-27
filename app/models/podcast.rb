class Podcast < ApplicationRecord
  has_many :episodes
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
