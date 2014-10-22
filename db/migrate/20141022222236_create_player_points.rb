class CreatePlayerPoints < ActiveRecord::Migration
  def change
    create_table :player_points do |t|
      t.belongs_to :week, index: true
      t.belongs_to :player, index: true
      t.integer :score

      t.timestamps
    end
  end
end
