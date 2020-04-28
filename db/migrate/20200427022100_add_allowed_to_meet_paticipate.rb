class AddAllowedToMeetPaticipate < ActiveRecord::Migration[5.2]
  def change
    add_column :meet_paticipates, :allowed, :boolean, default: false, null: false
  end
end
