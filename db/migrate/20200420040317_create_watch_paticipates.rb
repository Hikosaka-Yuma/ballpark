class CreateWatchPaticipates < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_paticipates do |t|
      t.string :user_id
      t.integer :watching_id
      t.timestamps
    end
  end
end
