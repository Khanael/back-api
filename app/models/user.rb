class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :chatroom_users, dependent: :destroy
  has_many :chatrooms, through: :chatroom_users

  validates :pseudo, presence: true, uniqueness: true
end
