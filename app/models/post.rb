class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :title, presence: true 
  
  belongs_to :user
  belongs_to :team
end
