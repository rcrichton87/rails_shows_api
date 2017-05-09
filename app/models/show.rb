class Show < ActiveRecord::Base
  has_many :favourite_shows
  has_many :favourited_by, through: :favourited_shows, source: :user
end
