class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :games, dependent: :destroy
  has_many :bookings
  has_many :owned_games, class_name: "Game", foreign_key: "user_id"
  has_many :reviews
end
