class User < ActiveRecord::Base
  has_many :favourite_shows
  has_many :favourites, through: :favourited_shows, source: :user
end
