class KeyPoint < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 35 }
end
