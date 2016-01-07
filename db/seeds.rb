# USERS

cotton = User.create(
  name: "Cotton",
  email: "cotton@server.com",
  password: "cotton1234",
  password_confirmation: "cotton1234",
  family_name: "Lee",
  animal_type: "Cotton de Tulear",
  gender: "male",
  birthday: Date.new(2001,09,10),
  human_name: "Yeon",
  address: "Seoul, Korea",
  profile_img: "cotton-profile-img.jpg",
  hobby: "singing",
  fav_food: "sweet potato"
  )

ziola = User.create(
  name: "Ziola",
  email: "ziola@server.com",
  password: "ziola1234",
  password_confirmation: "ziola1234",
  family_name: "Oh",
  animal_type: "Dachshund",
  gender: "male",
  birthday: Date.new(2013,09,10),
  human_name: "June",
  address: "Suwon, Korea",
  profile_img: "ziola-profile-img.jpg"
  hobby: "eating",
  fav_food: "anything sweet"
  )

latte = User.create(
  name: "Latte",
  email: "latte@server.com",
  password: "latte1234",
  password_confirmation: "latte1234",
  family_name: "Ha",
  animal_type: "Kitten",
  gender: "female",
  birthday: Date.new(2015,10,10),
  human_name: "Eunmi",
  address: "Pangyo, Korea",
  profile_img: "latte-profile-img.jpg"
  hobby: "sleeping",
  fav_food: "nothing"
  )

# POSTS

cotton_post1 = Post.create(
  body: "Find me, I dare you",
  img_url: "posts/cotton_flowers.jpg",
  user_id: cotton.id
  )

cotton_post2 = Post.create(
  body: "I hate this hair-do",
  img_url: "posts/cotton_tortured.jpg",
  user_id: cotton.id
  )

cotton_post3 = Post.create(
  body: "The christmas carol",
  video_url: "cotton_christmas.mp4",
  user_id: cotton.id
  )

cotton_post4 = Post.create(
  body: "I got punished again...",
  img_url: "posts/cotton_punished.jpg",
  user_id: cotton.id
  )

cotton_post5 = Post.create(
  body: "Pay attention to me and me only",
  img_url: "posts/cotton_upclose.jpg",
  user_id: cotton.id
  )

cotton_post6 = Post.create(
  body: "I want to go back inside...",
  img_url: "posts/cotton_sad.jpg",
  user_id: cotton.id
  )

ziola_post1 = Post.create(
  body: "I really need a playdate",
  img_url: "posts/ziola_bored.jpg",
  user_id: ziola.id
  )

ziola_post2 = Post.create(
  body: "I ate the pillow",
  video_url: "posts/ziola_bad.jpg",
  user_id: ziola.id
  )

ziola_post3 = Post.create(
  body: "I love my human for feeding me",
  video_url: "posts/ziola_fed.jpg",
  user_id: ziola.id
  )

latte_post1 = Post.create(
  body: "This is me, on the hunt",
  video_url: "posts/latte_curious.jpg",
  user_id: latte.id
  )

latte_post2 = Post.create(
  body: "I'm going to eat the whole drawing",
  video_url: "posts/latte_eatpic.jpg",
  user_id: latte.id
  )

latte_post3 = Post.create(
  body: "Let me go to sleep",
  video_url: "posts/latte_yawn.jpg",
  user_id: latte.id
  )

latte_post4 = Post.create(
  body: "What do you want, human?",
  video_url: "posts/latte_held.jpg",
  user_id: latte.id
  )

# SOUNDS

cotton_sound1 = Sound.create(
  user_id: cotton.id,
  sound_type: "howl",
  sound_url: "cotton_howl.mp3"
  )

cotton_sound2 = Sound.create(
  user_id: cotton.id,
  sound_type: "whimper",
  sound_url: "whimper.mp3"
  )

cotton_sound3 = Sound.create(
  user_id: cotton.id,
  sound_type: "angry",
  sound_url: "angry.mp3"
  )

latte_sound1 = Sound.create(
  user_id: latte.id,
  sound_type: "hi",
  sound_url: "latte_meow.mp3"
  )

# COMMENTS

latte_comment1 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post1.id,
  sound_id: latte_sound1.id
  )

latte_comment2 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post2.id,
  sound_id: latte_sound1.id
  )

latte_comment3 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post3.id,
  sound_id: latte_sound1.id
  )

latte_comment4 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post4.id,
  sound_id: latte_sound1.id
  )

latte_comment5 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post5.id,
  sound_id: latte_sound1.id
  )

latte_comment6 = Comment.create(
  user_id: latte.id,
  post_id: cotton_post6.id,
  sound_id: latte_sound1.id
  )
