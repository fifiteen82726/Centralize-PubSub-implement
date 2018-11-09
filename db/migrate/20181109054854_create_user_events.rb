class CreateUserEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :user_events do |t|
      t.integer :user_id, index: true
      t.integer :event_id, index: true

      t.timestamps
    end
  end
end
