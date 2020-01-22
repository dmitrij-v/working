class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    @notes = current_user.notes
  end
end
