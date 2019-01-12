class User < ApplicationRecord
  # Callback to downcase email befor saving it to the db
  before_save { self.email = email.downcase }
  # See test/models/user_test.rb
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  end
