class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :points
      t.integer :time
      t.integer :errors
      t.integer :level

      t.timestamps
    end
  end
end
