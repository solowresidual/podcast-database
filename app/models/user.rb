class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[spotify]
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  serialize :spotify_hash

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.avatar = auth.info.image
      user.username = auth.info.nickname
      user.spotify_hash = RSpotify::User.new(auth).to_hash
    end
  end
end
