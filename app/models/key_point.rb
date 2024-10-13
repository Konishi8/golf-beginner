class KeyPoint < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorited_by_users, through: :favorites, source: :user
  validates :title, length: { maximum: 35 }
end
