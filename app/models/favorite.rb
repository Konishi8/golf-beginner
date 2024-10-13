class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :key_point
end
