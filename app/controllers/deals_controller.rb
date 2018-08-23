class DealsController < ApplicationController
  def index
    @types = Type.all
    if params[:type]
      @deals = Deal.joins(:type).where(types: {name: params[:type]}).select(&:valid_now?)
      respond_to do |format|
        format.html
        format.js  # <-- idem
      end
    else
      @deals = Deal.all.select(&:valid_now?)
    end


    if params[:q]
      @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)
      @current_location = Geocoder.search(params[:q]).first.coordinates
      cookies[:current_location] = @current_location.to_json
    end

    if @deals.blank?
      @deals = Deal.all.select(&:valid_now?)
    end
  end

  def show
    @deal = Deal.find(params[:id])
  end
end
