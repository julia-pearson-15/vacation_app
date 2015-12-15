class User < ActiveRecord::Base
  has_many :listings
  has_many :bookings
  has_many :reviews
end