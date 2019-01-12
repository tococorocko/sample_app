class User < ApplicationRecord
  # Callback to downcase email befor saving it to the db
  before_save { self.email = email.downcase }
  # See test/models/user_test.rb
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # add password digest column to user mdoel with migration, add gem 'bcrypt'
  has_secure_password # then add password to setup method in user_test.rb
  # more pw validations, see tests
  validates :password, presence: true, length: { minimum: 6 }
end
