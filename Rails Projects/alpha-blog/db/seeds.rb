# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..5).each do |i|
  Article.create!(
    title: "Sports Article #{i}",
    description: "This is a sports description.",
    body: "This is a body for a sports article.",
    user_id: 35,
    category_ids: [1])
end
