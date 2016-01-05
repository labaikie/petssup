User.delete_all

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
