class ReviewsController < ApplicationController
  # no need for index or show here!! Reviews are only displayed on Listing page
  def new
    @review = Review.new
  end

  def create 
    @review = Review.create({review_params})
  end

  private
    def review_params
      params.require(:review).permit(:name, :city, :state, :zip, :img_url)
    end
end	