class ChangeDataMemberToWatching < ActiveRecord::Migration[5.2]
  def change
    change_column :watchings, :member, :integer
  end
end
