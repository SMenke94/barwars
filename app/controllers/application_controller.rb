class ApplicationController < ActionController::Base
  before_action :current_location

  def current_location
    @current_location = JSON.parse(cookies[:current_location]) || [55.6760968, 12.5683372]
  end

end
