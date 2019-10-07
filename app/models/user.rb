class User < ApplicationRecord
  has_many :games
  validates_associated :games
  validates :name, { presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 6 } }
  validates :password, { presence: true, length: { in: 6..20 } }
  
  has_secure_password
end
