class Review < ApplicationRecord
  belongs_to :user, :episode
end
