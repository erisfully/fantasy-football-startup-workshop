class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.belongs_to :fantasy_home_team, index: true
      t.belongs_to :fantasy_away_team, index: true
      t.belongs_to :week, index: true
      t.integer :fantasy_home_team_score
      t.integer :fantasy_away_team_score

      t.timestamps
    end
  end
end
