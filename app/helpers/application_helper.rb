module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # Render everywhere but in the index because it looked bad
  def render_square_logo
    render 'shared/logo' unless params[:controller] == 'deals' && params[:action] == 'index'
  end
end
