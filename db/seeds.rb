# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
 50.times do |index|
  Product.create!(name: Faker::Coffee.blend_name, cost: Faker::Number.between(from: 12, to: 27), country_of_origin: Faker:: Coffee.origin)
end

p "Created #{Product.count} products"

Review.destroy_all
products = Product.all
250.times do |index|
  Review.create!(author: Faker::Movies::HitchhikersGuideToTheGalaxy.character, content_body: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote[0..249], rating: Faker::Number.between(from: 1, to: 5), product_id: products.sample.id)
end

p "Created #{Review.count} reviews"
