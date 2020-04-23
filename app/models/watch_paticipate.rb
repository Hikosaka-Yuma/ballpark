class WatchPaticipate < ApplicationRecord
  validates :watching_id, presence: true
  belongs_to :user
  belongs_to :watching
end
