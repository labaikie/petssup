class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_id
      t.string :img_url
      t.string :video_url
      t.string :body

      t.timestamps null: false
    end
  end
end
