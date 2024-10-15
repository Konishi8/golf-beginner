class MypageController < ApplicationController
    before_action :authenticate_user!

  def show
    @user = current_user
    @favorite_key_points = current_user.favorited_key_points
  end
end
