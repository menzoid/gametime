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

Category.create!(name: 'Dice', photo: 'https://inkboxdesigns.imgix.net/product_stencils/3967452807246_1576612403.jpg?auto=compress,format&con=100&gam=100&pad=20&bg=F4F5F7&fit=fill&duotone=000000,F4F5F7')
Category.create!(name: 'Puzzle', photo: 'https://cdn.shopify.com/s/files/1/0035/0715/9129/products/ChessAndDrafts-FoldingBoard-51153_800x800.jpg?v=1633620211')
Category.create!(name: 'Strategy', photo: 'https://inkboxdesigns.imgix.net/product_stencils/3967452807246_1576612403.jpg?auto=compress,format&con=100&gam=100&pad=20&bg=F4F5F7&fit=fill&duotone=000000,F4F5F7')
Category.create!(name: 'Deck Builder', photo: 'https://www.mcgill.ca/oss/files/oss/styles/hd/public/deckofcards_cover-02.png?itok=S-zIXK-9&timestamp=1530113172')
Category.create!(name: 'Family', photo: 'https://cdn.shopify.com/s/files/1/0035/0715/9129/products/ChessAndDrafts-FoldingBoard-51153_800x800.jpg?v=1633620211')
Category.create!(name: 'Roll & Move', photo: 'https://www.mcgill.ca/oss/files/oss/styles/hd/public/deckofcards_cover-02.png?itok=S-zIXK-9&timestamp=1530113172')
Category.create!(name: 'War game', photo: 'https://cdn.shopify.com/s/files/1/0035/0715/9129/products/ChessAndDrafts-FoldingBoard-51153_800x800.jpg?v=1633620211')
Category.create!(name: 'Educational', photo: 'https://cdn.shopify.com/s/files/1/0035/0715/9129/products/ChessAndDrafts-FoldingBoard-51153_800x800.jpg?v=1633620211')

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
