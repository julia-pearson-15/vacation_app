class Review < Activerecord::Base
  belongs_to :listing
  belongs_to :user
end