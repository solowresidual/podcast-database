class Episode < ApplicationRecord
  belongs_to :podcast
  has_many :reviews
  has_many :favorite
end
