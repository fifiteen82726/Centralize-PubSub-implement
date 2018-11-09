class DestroyColInEvent < ActiveRecord::Migration[5.1]
  def change
    remove_column(:events, :subscribers_ids)
  end
end
