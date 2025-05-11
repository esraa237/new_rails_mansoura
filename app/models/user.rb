class User < ApplicationRecord
    has_many :posts
    has_many :created_posts, class_name: "Post", foreign_key: "creator_id"
    has_many :editor_assignments
    has_many :edited_posts, through: :editor_assignments, source: :post
end
