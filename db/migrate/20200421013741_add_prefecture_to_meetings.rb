class AddPrefectureToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :prefecture, :string
  end
end
