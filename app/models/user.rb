class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :posts
  has_many :shifts
  
  has_many :relationships, dependent: :destroy
  has_many :members, through: :relationships, source: :post
end
