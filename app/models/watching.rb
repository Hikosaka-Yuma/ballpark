class Watching < ApplicationRecord
  
  validates :user_id, presence: true
  validates :ballpark, presence: true
  validates :game, presence: true
  validates :dead_line, presence: true
  validates :member, presence: true
  validates :title, presence: true
  validates :message, presence: true
  has_many :watch_paticipates
  has_many :watch_paticipates_users, through: :watch_paticipates, source: 'user'
end
