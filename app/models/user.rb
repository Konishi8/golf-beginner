class User < ApplicationRecord
  has_many :practice_records
  has_many :key_points
  has_many :favorites
  has_many :favorited_key_points, through: :favorites, source: :key_point
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  def favorite(key_point)
    favorited_key_points << key_point
  end

  def unfavorite(key_point)
    favorited_key_points.destroy(key_point)
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
