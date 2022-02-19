class User < ApplicationRecord
  has_many :sauces
  has_secure_password
  attr_accessor :current_password

  validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email"}
  validates :username, presence: true
  validates :password, length: { minimum: 6 }
end
