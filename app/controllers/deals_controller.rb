class DealsController < ApplicationController
  def index
    @deals = Deal.all
    if params[:type]
      @deals = Deal.joins(:type).where(types: {name: params[:type]})
      respond_to do |format|
        format.html
        format.js  # <-- idem
      end
        # Deal.joins(:type).where('types.name = ?', params[:type][0])
        # @deals = @deals.where(type: [params[:type]])
      # elsif params[:q].present?
      #   sql_query = "name ILIKE :q OR description ILIKE :q OR category ILIKE :q"
      #   @gears = @gears.where(sql_query, q: "%#{params[:q]}%")
      end

    @types = Type.all

  end

  def show
    @deal = Deal.find(params[:id])
  end
end
