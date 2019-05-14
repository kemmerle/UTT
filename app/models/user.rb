class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true

  has_many :posts 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
