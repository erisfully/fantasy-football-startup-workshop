class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :yards
      t.belongs_to :week, index: true
      t.belongs_to :player, index: true

      t.timestamps
    end
  end
end
