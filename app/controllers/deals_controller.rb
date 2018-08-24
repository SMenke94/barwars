class DealsController < ApplicationController
  def index
    @types = Type.all
    dancing_deals
    smoking_deals

    if params[:type]
      @deals = Deal.joins(:type).where(types: {name: params[:type]}).select(&:valid_now?)
      respond_to do |format|
        format.html
        format.js  # <-- idem
      end
    elsif params[:dancing]
      @deals = @dancing.select(&:valid_now?)
    elsif params[:smoking]
      @deals = @nosmoking.select(&:valid_now?)
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
    @bar = Bar.where.not(latitude: nil, longitude: nil)

    @markers = [{
      lat: @deal.bar.latitude,
      lng: @deal.bar.longitude,
      infoWindow: { content: render_to_string(partial: "/shared/map-box", locals: { deal: @deal }) }
    }]
  end

  private

  def dancing_deals
    @dancing = []
    @dancingdeals = Deal.all
    @dancingdeals.each do |deal|
      if deal.bar.dancing
        @dancing << deal
      end
    end
  end

  def smoking_deals
    @nosmoking = []
    @nosmokingdeals = Deal.all
    @nosmokingdeals.each do |deal|
      if deal.bar.smoking = false
        @nosmoking << deal
      end
    end
  end


end
