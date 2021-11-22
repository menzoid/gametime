# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "adding games to db"

categories = ['strategy', 'cards', 'dice', 'puzzles' ]

20.times do
  Game.create!(
    title: Faker::Game.title,
    category: categories.select,
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0),
    price: rand(5..20),
    user_id: rand(1..3)
  )


end

puts "games added"
