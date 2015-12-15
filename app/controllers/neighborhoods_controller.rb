class NeighborhoodsController < ActionController::Base
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @listings = @neighborhood.listings
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.create({
      name: params[:name], 
      city: params[:city], 
      state: params[:state], 
      zip: params[:zip]
    })
    redirect_to @neighborhood
  end

end	