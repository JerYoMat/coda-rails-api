class User < ApplicationRecord
  has_secure_password
  has_many :favorites
  has_many :companies, through: :favorites

  validates :name, presence: true

  before_save { self.email = email.downcase }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                      format: { with: EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
