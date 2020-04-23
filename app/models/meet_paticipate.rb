class MeetPaticipate < ApplicationRecord
  validates :meeting_id, presence: true
  
  belongs_to :user
  belongs_to :meeting
end
