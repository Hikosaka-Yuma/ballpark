class CreateWatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :watchings do |t|
      t.integer :user_id
      t.string :ballpark
      t.string :game
      t.datetime :dead_line
      t.string :member
      t.string :title
      t.string :message
      t.timestamps
    end
  end
end
