class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.belongs_to :player, index: true
      t.belongs_to :fantasy_team, index: true
      t.belongs_to :week, index: true

      t.timestamps
    end
  end
end
