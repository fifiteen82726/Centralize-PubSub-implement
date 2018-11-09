class DropSubAndPubTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :subscribers
    drop_table :publishers
  end
end
