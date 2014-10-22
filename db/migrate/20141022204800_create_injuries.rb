class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.integer :player_id
      t.integer :start_week_id
      t.integer :end_week_id

      t.timestamps
    end
  end
end
