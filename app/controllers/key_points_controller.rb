class KeyPointsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_key_point, only: [:edit, :update, :destroy]

  def index
    @key_points = current_user.key_points
  end

  def new
    @key_point = KeyPoint.new
  end

  def create
    @key_point = current_user.key_points.new(key_point_params)
    if @key_point.save
      redirect_to key_points_path, notice: 'KeyPoint was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @key_point.update(key_point_params)
      redirect_to key_points_path, notice: 'KeyPoint was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @key_point.destroy
    redirect_to key_points_path, notice: 'KeyPoint was successfully deleted.'
  end

  private

  def key_point_params
    params.require(:key_point).permit(:title)
  end

  def set_key_point
    @key_point = current_user.key_points.find(params[:id])
  end
end
