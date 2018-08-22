class DealsController < ApplicationController
  def index
    @types = Type.all
    if params[:type]
      @deals = Deal.joins(:type).where(types: {name: params[:type]})
      respond_to do |format|
        format.html
        format.js  # <-- idem
      end
    else
      @deals = Deal.all
    end


    # @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)
    if params[:q]
      @current_location = Geocoder.search(params[:q]).first.coordinates
      cookies[:current_location] = @current_location.to_json
    else
      @current_location = JSON.parse(cookies[:current_location]) || current_location
    end


    if @deals.blank?
      @deals = Deal.all
    end
  end

  def show
    @deal = Deal.find(params[:id])
  end
end
