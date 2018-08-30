class DealsController < ApplicationController
  def index
    @types = Type.all

    if params[:q]
      @deals = Bar.near(params[:q], params[:distance]).map(&:deals).flatten.select!(&:valid_now?)
      @current_location = Geocoder.search(params[:q]).first.coordinates
      cookies[:current_location] = @current_location.to_json
    end

    if params[:type]
      types = params[:type].map do |type|
        Type.find_by(name: type).id
      end
      @deals = @deals.select do |deal|
        types.include?(deal.type_id)
      end
    end

    if cookies[:dancing]
      @deals = @deals.select do |deal|
        deal.bar.dancing
      end
    end

    if params[:smoking]
      @deals = @deals.select do |deal|
        deal.bar.smoking
       end
     end

    if @deals.nil?
      @deals = Deal.all.select(&:valid_now?)
    end

    respond_to do |format|
      format.html
      format.js
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
    monday = (today - today.wday)
    sunday = monday + 6
    weekly_deals = Deal.where("deals.start_time < ? OR deals.start_time > ?", sunday.to_datetime, monday.to_datetime)
    @future_deals = (today + 1..sunday).map do |day|
      deals = weekly_deals.select { |deal| deal.start_time.to_date == day }
      { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count, day: day  }
    end
    @past_deals = (monday...today).map do |day|
      deals = weekly_deals.select { |deal| deal.start_time.to_date == day }
      { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count, day: day }
    end
    deals = weekly_deals.select { |deal| deal.start_time.to_date == today }
    @today_stats = { deal_count: deals.count, bar_count: deals.map(&:bar).uniq.count }
  end
end
