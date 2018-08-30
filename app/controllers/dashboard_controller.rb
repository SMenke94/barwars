class DashboardController < ApplicationController
  # My profilepage

  def show
    @user_deals = current_user.user_deals
    @user_deals.each do |user_deal|
      user_deal.destroy if user_deal.deal.end_time < Time.now
    end
    @user_deals = current_user.user_deals
  end
end
