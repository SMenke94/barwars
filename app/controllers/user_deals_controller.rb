class UserDealsController < ApplicationController
  before_action :set_deal
  before_action :authenticate_user!

  def create
    @user_deal = UserDeal.new
    @user_deal.user = current_user
    @user_deal.deal = @deal
    if !@user_deal.save!
      redirect_to deals_path, alert: "Deal not saved"
    end
  end

  def update
    @user_deal = UserDeal.find_by(user: current_user, deal: @deal)
    @user_deal.destroy
  end

  private

  def set_deal
    @deal = Deal.find(params[:deal_id])
  end
end
