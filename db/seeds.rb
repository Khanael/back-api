# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Destroy all users
puts "Destroy all users"
User.destroy_all

# Destroy all chatrooms
puts "Destroy all chatrooms"
Chatroom.destroy_all

# Destroy all chatroom_users
puts "Destroy all chatroom_users"
ChatroomUser.destroy_all

# Destroy all messages
puts "Destroy all messages"
Message.destroy_all

# Create 2 user
puts "Create 2 user"
toto = User.create!(pseudo: "toto", email: "toto@toto.com", password: "123456")
tata = User.create!(pseudo: "tata", email: "tata@tata.com", password: "123456")

# Create 1 chatroom
puts "Create 1 chatroom"
chatroom = Chatroom.create!(name: "chatroom1")

# Create 1 chatroom_user
puts "Create 1 chatroom_user"
ChatroomUser.create!(user_id: toto.id, chatroom_id: chatroom.id, admin?: true)

# Add tata to chatroom
puts "Add tata to chatroom"
ChatroomUser.create!(user_id: tata.id, chatroom_id: chatroom.id)

# Create 1 message
puts "Create 2 message"
Message.create!(content: "Hello", user_id: toto.id, chatroom_id: chatroom.id)
Message.create!(content: "Est-ce que ça marche ?", user_id: toto.id, chatroom_id: chatroom.id)
