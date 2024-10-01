class CreateKeyPoints < ActiveRecord::Migration[7.1]
  def change
    create_table :key_points do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
