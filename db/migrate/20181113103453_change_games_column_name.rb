class ChangeGamesColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :errors, :penalties
  end
end
