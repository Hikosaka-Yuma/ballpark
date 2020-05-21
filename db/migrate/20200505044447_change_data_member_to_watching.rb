class ChangeDataMemberToWatching < ActiveRecord::Migration[5.2]
  def up
    change_column :watchings, :member, :integer
  end
end
