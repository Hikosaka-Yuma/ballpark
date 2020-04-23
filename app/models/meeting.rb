class Meeting < ApplicationRecord
   validates :user_id, presence: true
   validates :datetime, presence: true
   validates :deadline, presence: true
   validates :member, presence: true
   validates :title, presence: true
   validates :message, presence: true
   validates :place, presence: true
   validates :prefecture, presence: true
   
   has_many :meet_paticipates
   has_many :meet_paticipates_users, through: :meet_paticipates, source: 'user'
end
