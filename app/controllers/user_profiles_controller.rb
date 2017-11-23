class UserProfilesController < ApplicationController
  before_action :authenticate_user!, :set_user

  private

  def set_user
    @user_profile = UserProfile.where(user_id: current_user.id)
  end
end
