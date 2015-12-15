class ReviewsController < ApplicationController::Base
  # no need for index or show here!! Reviews are only displayed on Listing page
  def new
    @review = Review.new
  end

  def create 
    @review = Review.create({review_params})
  end
end	