class BarsController < ApplicationController

  def index
    @bars = Bar.all
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new
    #@bar.save(:validate => false)
  end

  private



  # def bar_params
  #   params.require(:bar).permit(
  #     :name,
  #     )
  # end

end
