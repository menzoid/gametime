# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "adds categories"

Category.create!(name: 'dice')
Category.create!(name: 'kids')

puts "added categories"

puts "deleting games"

Game.destroy_all

puts "adding games to db"

20.times do
  Game.create!(
    title: Faker::Game.title,
    category_id: rand(1..4),
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0),
    price: rand(5..20),
    user_id: rand(1..3),
    description: Faker::Lorem.paragraph(sentence_count: 5)
  )
end

puts "games added"
