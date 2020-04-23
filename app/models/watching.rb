class Watching < ApplicationRecord
  
  validates :user_id, presence: true
  validates :ballpark, presence: true
  validates :game, presence: true
  validates :dead_line, presence: true
  validates :member, presence: true
  validates :title, presence: true
  validates :message, presence: true
  has_many :watching_paticipates
  has_many :watching_paticipates_users, through: :watching_paticipates, source: 'user'
end
