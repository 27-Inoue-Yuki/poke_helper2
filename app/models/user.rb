class User < ApplicationRecord
  validates :name, presence: true,length: { in: 1..15 }
  SPECIAL_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze
  validates :email, presence: true,format:{with: SPECIAL_EMAIL}
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
  has_secure_password
end
