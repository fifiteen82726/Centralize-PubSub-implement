class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :subscribers_ids
      t.integer :publisher_id, index: true

      t.timestamps
    end
  end
end
