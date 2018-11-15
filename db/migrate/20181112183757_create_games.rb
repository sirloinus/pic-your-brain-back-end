class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :points
      t.decimal :time
      t.integer :penalties
      t.integer :level
      t.decimal :time1
      t.decimal :time2
      t.decimal :time3
      t.decimal :time4
      t.integer :penalties1
      t.integer :penalties2
      t.integer :penalties3
      t.integer :penalties4
      t.timestamps
    end
  end
end
