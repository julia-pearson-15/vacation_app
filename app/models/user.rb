class User < ActiveRecord::Base
  has_secure_password
  
  has_many :listings
  has_many :bookings
  has_many :reviews
end