class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :category
      t.integer :difficulty
      t.integer :player_count
      t.float :play_time
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
