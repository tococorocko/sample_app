class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.{1}]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }

end
