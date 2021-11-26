require "open-uri"

User.destroy_all
Game.destroy_all
Category.destroy_all


photo_a = ["https://res.cloudinary.com/menzoid/image/upload/v1637938479/Games/game-of-life_ixl7kh.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938274/Games/monopoly_jqehv5.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938274/Games/scrabble_odzxzc.jpg",
  "https://res.cloudinary.com/menzoid/image/upload/v1637938274/Games/battleship_trljsk.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938274/Games/risk_pefwvw.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938274/Games/chess_iwznwp.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938317/Games/backgammon_fi7v40.jpg",
  "https://res.cloudinary.com/menzoid/image/upload/v1637938317/Games/checkers_evxpha.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938811/Games/Catan_erlaln.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938317/Games/mastermind_cztriy.jpg","https://res.cloudinary.com/menzoid/image/upload/v1637938317/Games/uno_wjjf30.jpg"]

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

games_descriptions = ["The Game of Life, also known simply as Life, is a board game originally created in 1860 by Milton Bradley, as The Checkered Game of Life. ... Two to four or six players can participate in one game. Variations of the game accommodate up to ten players. The modern version was originally published 100 years later, in 1960.",
"Monopoly is a multi-player economics-themed board game. In the game, players roll two dice to move around the game board, buying and trading properties, and developing them with houses and hotels. Players collect rent from their opponents, with the goal being to drive them into bankruptcy.",
"Scrabble is a word game in which two to four players score points by placing tiles, each bearing a single letter, onto a game board divided into a 15×15 grid of squares. The tiles must form words that, in crossword fashion, read left to right in rows or downward in columns, and be included in a standard dictionary or lexicon.",
"Battleship (also Battleships or Sea Battle[1]) is a strategy type guessing game for two players. It is played on ruled grids (paper or board) on which each player's fleet of ships (including battleships) are marked. The locations of the fleets are concealed from the other player. Players alternate turns calling shots at the other player's ships, and the objective of the game is to destroy the opposing player's fleet.",
"Risk is a strategy board game of diplomacy, conflict and conquest[1] for two to six players. The standard version is played on a board depicting a political map of the world, divided into forty-two territories, which are grouped into six continents. Turns rotate among players who control armies of playing pieces with which they attempt to capture territories from other players, with results determined by dice rolls.",
"Chess is a two-player, abstract strategy board game that represents medieval warfare on an 8x8 board with alternating light and dark squares. Opposing pieces, traditionally designated White and Black, are initially lined up on either side. Each type of piece has a unique form of movement and capturing occurs when a piece, via its movement, occupies the square of an opposing piece. Players take turns moving one of their pieces in an attempt to capture, attack, defend, or develop their positions.",
"Backgammon is a classic abstract strategy game dating back thousands of years. Each player has a set of 15 men that must be moved from their starting positions, around, and then off the board. Dice are thrown each turn, and each player must decide which of his men to move based on the outcome of the roll. Players can capture each other's men, forcing the captured men to restart their journey around the board. The winner is the first player to get all 15 men off the board.",
"Abstract strategy game where players move disc-shaped pieces across an 8 by 8 cross-hatched (checker) board.
Pieces only move diagonally, and only one space at a time. If a player can move one of his pieces so that it jumps over an adjacent piece of their opponent and into an empty space, that player captures the opponent's disc. Jumping moves must be taken when possible, thereby creating a strategy game where players offer up jumps in exchange for setting up the board so that they jump even more pieces on their turn.",
"In CATAN (formerly The Settlers of Catan), players try to be the dominant force on the island of Catan by building settlements, cities, and roads. On each turn dice are rolled to determine what resources the island produces. Players build by spending resources (sheep, wheat, wood, brick and ore) that are depicted by these resource cards; each land type, with the exception of the unproductive desert, produces a specific resource: hills produce brick, forests produce wood, mountains produce ore, fields produce wheat, and pastures produce sheep.",
"Guess the color of hidden pegs. A deduction game where each player takes turn making a limited number of guesses, using logic to deduce what pegs the opponent has hidden.
One player secretly puts four colored pegs in the spaces behind a screen at once end of the game board. The other player, the code breaker, makes a series of guesses. After each guess, the code maker uses smaller pegs to tell the code breaker if their guessed pegs are the right color and in the right place, are the right color but the wrong place, or are the wrong color entirely. The code breaker makes another guess in the next row, building upon information from previous guesses, trying to match the pegs the code maker hid at the beginning of the game.",
"Players race to empty their hands and catch opposing players with cards left in theirs, which score points. In turns, players attempt to play a card by matching its color, number, or word to the topmost card on the discard pile. If unable to play, players draw a card from the draw pile, and if still unable to play, they pass their turn. Wild and special cards spice things up a bit."]

address_a = ["Lumiar, Lisbon", "Caldas da Rainha, Portugal", "Bairro alto, Lisbon", "Moita, Portugal", "Sagres, Portugal", "Faro, Portugal", "Laranjeiras, Lisbon", "Porto, Portugal","Alverca, Portugal", "Caldas da Rainha, Portugal"]

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
games_hash.each_with_index do |game, index|
  game = Game.new(
    title: game,
    category: Category.all.sample,
    address: address_a[index],
    difficulty: rand(1..5),
    player_count: rand(2..10),
    play_time: rand(0.5..4.0).round(2),
    price: rand(5..20).round(2),
    user: User.all.sample,
    description: games_descriptions[index]
  )
  file = URI.open(photo_a[index])
  game.photo.attach(io: file, filename: "#{game}.png", content_type: 'image/png')
  game.save
end

puts "games added"
