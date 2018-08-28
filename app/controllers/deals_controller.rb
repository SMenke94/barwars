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
    end

    if params[:q]
      @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)
      @current_location = Geocoder.search(params[:q]).first.coordinates
      cookies[:current_location] = @current_location.to_json
    end

    if @deals.nil?
      @deals = Deal.all.select(&:valid_now?)
    end

  end

  def show
    @deal = Deal.find(params[:id])

    @markers = [{
      lat: @deal.bar.latitude,
      lng: @deal.bar.longitude,
      infoWindow: { content: render_to_string(partial: "/shared/map-box", locals: { deal: @deal }) }
    }]

    @gmaps_direction_link = @deal.get_there_from(cookies[:current_location])
  end

  def weekly_deals
    today = Date.today
    monday = (today - today.wday) + 1
    sunday = monday + 6
    weekly_deals = Deal.where("deals.start_time < ? AND deals.start_time > ?", sunday.to_datetime, monday.to_datetime)
    @future_deals = (today + 1..sunday).map do |day|
      deals = weekly_deals.select { |deal| deal.start_time.to_date == day}
      { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count, day: day  }
    end
    @past_deals = (monday...today).map do |day|
      deals = weekly_deals.select { |deal| deal.start_time.to_date == day }
      { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count, day: day }
    end
    deals = weekly_deals.select { |deal| deal.start_time.to_date == today }
    @today_stats = { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count }
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
      unless deal.bar.smoking
        @nosmoking << deal
      end
    end
  end

end
