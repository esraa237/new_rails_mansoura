# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear data
User.destroy_all
Post.destroy_all
EditorAssignment.destroy_all

# Create users
user1 = User.create(name: "Alice", email: "alice@example.com")
user2 = User.create(name: "Bob", email: "bob@example.com")
user3 = User.create(name: "Editor Jane", email: "jane@example.com")

# Create posts with user1 as author and user2 as creator
post1 = Post.create(title: "First Post", body: "Content...", user: user1, creator: user2)
post2 = Post.create(title: "Second Post", body: "More content...", user: user2, creator: user1)

# Assign editors
EditorAssignment.create(user: user3, post: post1)
EditorAssignment.create(user: user3, post: post2)
