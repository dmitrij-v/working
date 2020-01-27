class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def daily_menu
    RequestService.new.full_parce_daily_menu
    redirect_to :profile_path
  end
end
