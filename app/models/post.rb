class Post < ApplicationRecord
  belongs_to :user
  belongs_to :creator, class_name: "User", optional: true
  has_many :editor_assignments
  has_many :editors, through: :editor_assignments, source: :user
end
