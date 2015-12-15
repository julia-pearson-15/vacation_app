class NeighborhoodsController < ActionController::Base
  def index
    @neighborhoods = Neighborhood.all
  end
  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
end	