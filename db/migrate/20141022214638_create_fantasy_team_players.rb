class CreateFantasyTeamPlayers < ActiveRecord::Migration
  def change
    create_table :fantasy_team_players do |t|
      t.belongs_to :player, index: true
      t.belongs_to :fantasy_team, index: true

      t.timestamps
    end
  end
end
