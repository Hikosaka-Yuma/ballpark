class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.integer :user_id
      t.datetime :datetime
      t.datetime :deadline
      t.integer :member
      t.string :title
      t.string :message
      t.timestamps
    end
  end
end
