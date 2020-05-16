class CreateWatchingmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :watchingmessages do |t|
      t.integer :user_id
      t.integer :watching_id
      t.string :message

      t.timestamps
    end
  end
end
