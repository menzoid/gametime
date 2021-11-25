class Game < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews
end
