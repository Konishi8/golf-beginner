class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_key_point

  def create
    current_user.favorite(@key_point)
    redirect_to key_points_path, notice: "お気に入りに追加しました！"
  end

  def destroy
    current_user.unfavorite(@key_point)
    redirect_to key_points_path, notice: "お気に入りを解除しました！"
  end

  private

  def set_key_point
    @key_point = KeyPoint.find(params[:key_point_id])
  end
end
