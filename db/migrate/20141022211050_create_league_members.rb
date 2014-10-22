class CreateLeagueMembers < ActiveRecord::Migration
  def change
    create_table :league_members do |t|
      t.belongs_to :member, index: true
      t.belongs_to :league, index: true

      t.timestamps
    end
  end
end
