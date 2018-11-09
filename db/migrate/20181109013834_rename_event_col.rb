class RenameEventCol < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :events, :publisher_id, :user_id
  end

  def self.down
    rename_column :events, :user_id, :publisher_id
  end
end
