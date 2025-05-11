class User < ApplicationRecord
     # b.1: Validate presence
  validates :name, :dob, :email, :phone_number, presence: true

  # b.2: Validate email format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }

  # b.3: Validate uniqueness
  validates :email, uniqueness: true
end
