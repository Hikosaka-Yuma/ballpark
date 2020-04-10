class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.integer :number
      t.string :league_name

      t.timestamps
    end
  end
end
