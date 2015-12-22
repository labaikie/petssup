class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :user_id
      t.string :type
      t.string :sound_url

      t.timestamps null: false
    end
  end
end
