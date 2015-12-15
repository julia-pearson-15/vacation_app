class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :neighborhood
  has_many :bookings
  has_many :reviews
end