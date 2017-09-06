class User < ApplicationRecord
	has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {basic: 0, guest: 1, admin: 2}      
end
