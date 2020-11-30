class Episode < ApplicationRecord
  belongs_to :podcast
  has_many :reviews, dependent: :destroy
  has_many :favorite, dependent: :destroy
end
