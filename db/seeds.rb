require "open-uri"

User.destroy_all
Game.destroy_all
Category.destroy_all

games_hash = ["The game of life",
              "Monopoly",
              "Scrabble",
              "Battleship",
              "Risk",
              "Chess",
              "Backgammon",
              "Checkers",
              "Catan",
              "Mastermind",
              "Uno"]

puts "adds categories"

User.create(email: 'master@games.com', password: '123456')
User.create(email: 'zemanel@games.com', password: '123456')
User.create(email: 'slave@games.com', password: '123456')

Category.create!(name: 'Dice', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937863/CategoryGameTime/dice_rwdhiu.jpg')
Category.create!(name: 'Puzzle', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937863/CategoryGameTime/puzzle_q0rjbk.jpg')
Category.create!(name: 'Strategy', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937863/CategoryGameTime/strategy_fwqwz6.jpg')
Category.create!(name: 'Deck Builder', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637938234/CategoryGameTime/DominionSeasideCards_astitn.jpg')
Category.create!(name: 'Family', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937864/CategoryGameTime/familly_ukzows.jpg')
Category.create!(name: 'Roll & Move', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937863/CategoryGameTime/rolll_and_mmove_kq0dyt.jpg')
Category.create!(name: 'War game', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637938343/CategoryGameTime/war-of-the-ring_vilzio.png')
Category.create!(name: 'Educational', photo: 'https://res.cloudinary.com/menzoid/image/upload/v1637937864/CategoryGameTime/education_zidv0a.jpg')

puts "added categories"
puts "deleting games"

Game.destroy_all

puts "adding games to db"
games_hash.each do |game|
  game = Game.new(
    title: game,
    category: Category.all.sample,
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0).round(2),
    price: rand(5..20).round(2),
    user: User.all.sample,
    description: Faker::Lorem.paragraph(sentence_count: 8),
  )
  file = URI.open('https://picsum.photos/300/450')
  game.photo.attach(io: file, filename: "#{game}.png", content_type: 'image/png')
  game.save
end

puts "games added"
