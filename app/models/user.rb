class User < ApplicationRecord
  has_many :answers
  has_many :questions

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /.*?\@.*?\..*/, message: "oi, what's this?! gimme a valid email, mate." }
end
