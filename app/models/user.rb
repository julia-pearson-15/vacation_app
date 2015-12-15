class User < Activerecord::Base
  has_many :listings
  has_many :bookings
  has_many :reviews
end