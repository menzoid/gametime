User.destroy_all
Game.destroy_all
Category.destroy_all

puts "adds categories"

User.create(email: 'master@games.com', password: '123456')

Category.create!(name: 'dice')
Category.create!(name: 'kids')

puts "added categories"

puts "deleting games"

Game.destroy_all

puts "adding games to db"

20.times do
  Game.create!(
    title: Faker::Game.title,
    category: Category.all.sample,
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0),
    price: rand(5..20),
    user: User.last,
    description: Faker::Lorem.paragraph(sentence_count: 5)
  )
end

puts "games added"
