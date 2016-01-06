User.delete_all
Post.delete_all
Comment.delete_all

cotton = User.create(
  name: "Cotton",
  email: "cotton@server.com",
  password: "cotton1234",
  password_confirmation: "cotton1234",
  family_name: "Lee",
  animal_type: "Cotton de Tulear",
  gender: "male",
  human_name: "Yeon",
  address: "Seoul, Korea",
  profile_img: "cotton-profile-img.jpg"
  )

ziola = User.create(
  name: "Ziola",
  email: "ziola@server.com",
  password: "ziola1234",
  password_confirmation: "ziola1234",
  family_name: "Oh",
  animal_type: "Dachshund",
  gender: "male",
  human_name: "June",
  address: "Suwon, Korea",
  profile_img: "ziola-profile-img.jpg"
  )

latte = User.create(
  name: "Latte",
  email: "latte@server.com",
  password: "latte1234",
  password_confirmation: "latte1234",
  family_name: "Ha",
  animal_type: "Kitten",
  gender: "female",
  human_name: "Eunmi",
  address: "Pangyo, Korea",
  profile_img: "latte-profile-img.jpg"
  )

cotton_post1 = Post.create(
  body: "Find me, I dare you",
  img_url: "posts/cotton_flowers.jpg",
  user_id: cotton.id
  )

cotton_post2 = Post.create(
  body: "I have you",
  img_url: "posts/cotton_tortured.jpg",
  user_id: cotton.id
  )

ziola_post1 = Post.create(
  body: "Need a playdate",
  img_url: "posts/ziola_bored.jpg",
  user_id: ziola.id
  )
