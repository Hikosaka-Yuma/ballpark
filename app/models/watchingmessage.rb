class Watchingmessage < ApplicationRecord
 validates :message, presence: true
  belongs_to :user
  belongs_to :watching
end
