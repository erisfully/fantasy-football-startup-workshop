class CreateFantasyTeams < ActiveRecord::Migration
  def change
    create_table :fantasy_teams do |t|
      t.belongs_to :member, index: true
      t.belongs_to :league, index: true
      t.string :name

      t.timestamps
    end
  end
end
