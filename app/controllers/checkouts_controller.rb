class CheckoutsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @tier = RewardTier.find(params[:tier_id])
  end
end
