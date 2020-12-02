class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :episodes, through: :taggings
end
