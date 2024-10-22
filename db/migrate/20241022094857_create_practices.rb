class CreatePractices < ActiveRecord::Migration[7.1]
  def change
    create_table :practices do |t|
      t.string :title, null: false
      t.integer :count
      t.datetime :practice_date
      t.integer :user_id

      t.timestamps
    end
  end
end
