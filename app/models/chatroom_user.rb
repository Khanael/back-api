class ChatroomUser < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  validates :chatroom, uniqueness: { scope: :user }
end
