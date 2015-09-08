users = [
  { username: "Louise",
    email: "Louise",
    password: "Louise",
    password_confirmation: "Louise" },
  { username: "Teryn",
    email: "Teryn",
    password: "Teryn",
    password_confirmation: "Teryn" },
    { username: "Shawna",
      email: "Shawna",
      password: "Shawna",
      password_confirmation: "Shawna" },
]

users.each do |user_hash|
  User.create(user_hash)
end

categories = [
  { name: "Winter",
    user_id: 1 },
  { name: "Spring",
    user_id: 1 },
  { name: "Summer",
    user_id: 2 },
  { name: "Fall",
    user_id: 3 },
]

categories.each do |category_hash|
  Category.create(category_hash)
end

items = [
  { name: "socks",
    user_id: 1 },
  { name: "scarf",
    user_id: 1 },
  { name: "winter coat",
    user_id: 1 }
]

items.each do |item_hash|
  Item.create(item_hash)
end

outfits = [
  { name: "snow suit",
    user_id: 1,
    category_id: 1}
]

outfits.each do |outfit_hash|
  Outfit.create(outfit_hash)
end

Outfit.all.each do |outfit|
  outfit.items << Item.all
end
