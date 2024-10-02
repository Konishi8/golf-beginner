class KeyPointsController < ApplicationController
  before_action :authenticate_user!

  def index
    @key_points = current_user.key_points
  end
end
