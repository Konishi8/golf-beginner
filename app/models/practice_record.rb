class PracticeRecord < ApplicationRecord
  belongs_to :user
  # 今後practice_menuテーブルができたらリレーションを追加する
  # belongs_to :practice_menu

  validates :goal, presence: true
  validates :date, presence: true
  validates :comment, length: { maximum: 500 }
end
