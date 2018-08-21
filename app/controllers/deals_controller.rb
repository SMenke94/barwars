class DealsController < ApplicationController
  def index
    @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)

    flash[:notice] = "No result found" if @deals.nil?
    if params[:q]
      @current_location = Geocoder.search(params[:q]).first.coordinates
    end
  end

  def show
    @deal = Deal.find(params[:id])
  end
end
