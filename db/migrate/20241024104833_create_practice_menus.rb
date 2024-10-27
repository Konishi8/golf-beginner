class CreatePracticeMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :practice_menus do |t|
      t.references :user, null: false, foreign_key: true
      t.references :practice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
