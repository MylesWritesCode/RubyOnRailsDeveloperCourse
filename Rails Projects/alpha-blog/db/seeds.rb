# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create some users.
User.create!(username: "Myles", email: "myles@example.com", password: "123qwe", admin: true)
User.create!(username: "Mel", email: "mel@example.com", password: "password")
User.create!(username: "Mikaela", email: "mikaela@example.com", password: "qweasd")
User.create!(username: "Pro", email: "pro@example.com", password: "123qwe")
User.create!(username: "Basic", email: "basic@example.com", password: "qweasd")
User.create!(username: "Admin", email: "admin@example.com", password: "123qwe", admin: true)
User.create!(username: "User", email: "user@example.com", password: "qweasd")
User.create!(username: "Curry", email: "curry@example.com", password: "drowssap")
User.create!(username: "Panda", email: "panda@example.com", password: "123qwe", admin: true)

# Create some categories.
Category.create!(name: "Sports")
Category.create!(name: "Programming")
Category.create!(name: "Books")
Category.create!(name: "Lifestyle")
Category.create!(name: "Education")
Category.create!(name: "Fashion")
Category.create!(name: "Drinks")
Category.create!(name: "Nightlife")


# Create single category articles.
(1..5).each do |i|
  Article.create!(
    title: "Sports Article #{i}",
    description: "This is a sports article description.",
    body: "This is a body for a sports article.",
    user_id: 1,
    category_ids: [1]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Sports Article #{i}",
    description: "This is a sports article description.",
    body: "This is a body for a sports article.",
    user_id: 2,
    category_ids: [1]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Programming Article #{i}",
    description: "This is a programming article description.",
    body: "This is a body for a programming article.",
    user_id: 3,
    category_ids: [2]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Programming Article #{i}",
    description: "This is a programming article description.",
    body: "This is a body for a programming article.",
    user_id: 4,
    category_ids: [2]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Books Article #{i}",
    description: "This is a books article description.",
    body: "This is a body for a books article.",
    user_id: 5,
    category_ids: [3]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Books Article #{i}",
    description: "This is a books article description.",
    body: "This is a body for a books article.",
    user_id: 6,
    category_ids: [3]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Lifestyle Article #{i}",
    description: "This is a lifestyle article description.",
    body: "This is a body for a lifestyle article.",
    user_id: 7,
    category_ids: [4]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Lifestyle Article #{i}",
    description: "This is a lifestyle article description.",
    body: "This is a body for a lifestyle article.",
    user_id: 8,
    category_ids: [4]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Education Article #{i}",
    description: "This is a education article description.",
    body: "This is a body for a education article.",
    user_id: 8,
    category_ids: [5]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Fashion Article #{i}",
    description: "This is a fashion article description.",
    body: "This is a body for a fashion article.",
    user_id: 7,
    category_ids: [6]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Drinks Article #{i}",
    description: "This is a drinks article description.",
    body: "This is a body for a drinks article.",
    user_id: 6,
    category_ids: [7]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Night Life Article #{i}",
    description: "This is a night life article description.",
    body: "This is a body for a night life article.",
    user_id: 5,
    category_ids: [8]
    )
end

# Create articles with multiple categories.
(1..5).each do |i|
  Article.create!(
    title: "Night Life & Drinks Article #{i}",
    description: "This is a night life and drinks article description.",
    body: "This is a body for a night life and drinks article.",
    user_id: 2,
    category_ids: [7, 8]
    )
end

(1..5).each do |i|
  Article.create!(
    title: "Fashion & Lifestyle Article #{i}",
    description: "This is a fashion and lifestyle article description.",
    body: "This is a body for a fashion and lifestyle article.",
    user_id: 8,
    category_ids: [4, 6]
    )
end
