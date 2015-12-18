class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :password_digest
      t.index(:email, unique: true)
      t.string :family_name
      t.string :animal_type
      t.string :gender
      t.date :birthday
      t.string :human_name
      t.string :address
      t.string :profile_img, :default => "default-profile-img.png"
      t.string :voice_url
      t.string :hobby
      t.string :fav_food

      t.timestamps null: false
    end
  end
end
