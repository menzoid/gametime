class RemoveCateogryFromGame < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :category, :string
  end
end
