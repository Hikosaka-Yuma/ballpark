class CreateMeetPaticipates < ActiveRecord::Migration[5.2]
  def change
    create_table :meet_paticipates do |t|
      t.string :user_id
      t.integer :meeting_id
      t.timestamps
    end
  end
end
