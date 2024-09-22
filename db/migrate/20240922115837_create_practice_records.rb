class CreatePracticeRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :practice_records do |t|
      t.integer :user_id
      t.integer :practice_menu_id
      t.datetime :date
      t.string :goal
      t.text :comment

      t.timestamps
    end
  end
end
