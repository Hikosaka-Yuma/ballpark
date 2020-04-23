class Comment < ApplicationRecord
  
  validates :description, presence: true
  
  belongs_to :post
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
