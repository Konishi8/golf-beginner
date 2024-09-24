class PracticeRecord < ApplicationRecord
  belongs_to :user
  # 今後practice_menuテーブルができたらリレーションを追加
   # belongs_to :practice_menu
end
  