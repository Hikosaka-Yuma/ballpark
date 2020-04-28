class AddAllowedToWatchPaticipate < ActiveRecord::Migration[5.2]
  def change
    add_column :watch_paticipates, :allowed, :boolean, default: false, null: false
  end
end
