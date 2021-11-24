User.destroy_all
Game.destroy_all
Category.destroy_all

titles_array = ["The game of life", "Monopoly", "Scrabble", "Battleship", "Risk", "Chess", "Backgammon", "Checkers",
                "Catan", "Mastermind", "Uno"]

puts "adds categories"

User.create(email: 'master@games.com', password: '123456')
User.create(email: 'zemanel@games.com', password: '123456')
User.create(email: 'slave@games.com', password: '123456')

Category.create!(name: 'Dice')
Category.create!(name: 'Puzzle')
Category.create!(name: 'Strategy')
Category.create!(name: 'Deck Builder')
Category.create!(name: 'Family')
Category.create!(name: 'Roll & Move')
Category.create!(name: 'War game')

puts "added categories"
puts "deleting games"

Game.destroy_all

puts "adding games to db"
titles_array.each do |title|
  Game.create!(
    title: title,
    category: Category.all.sample,
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0).round(2),
    price: rand(5..20).round(2),
    user: User.last,
    description: Faker::Lorem.paragraph(sentence_count: 5)
  )
end

puts "games added"
