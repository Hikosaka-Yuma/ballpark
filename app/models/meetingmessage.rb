class Meetingmessage < ApplicationRecord
  validates :message, presence: true
  belongs_to :user
  belongs_to :meeting

end
