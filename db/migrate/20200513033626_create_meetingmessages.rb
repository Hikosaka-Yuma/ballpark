class CreateMeetingmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :meetingmessages do |t|
      t.string :message
      t.integer :user_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end
