class Show < ActiveRecord::Base
  has_many :favourite_shows
  has_many :favourited_by, through: :favourite_shows, source: :user
  # can call show.favourited_by to find users that have liked that show
end
