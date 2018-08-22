class DealsController < ApplicationController
  def index

    @types = Type.all
    if params[:type]
      @deals = Deal.joins(:type).where(types: {name: params[:type]})
      respond_to do |format|
        format.html
        format.js  # <-- idem
      end


    @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)
    if params[:q]
      @current_location = Geocoder.search(params[:q]).first.coordinates
    end
      
    if @deals.nil?
      @deals = Deal.all
    end
  end
    
  def show
    @deal = Deal.find(params[:id])
  end
end
