class AddRoleColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_publisher, :boolean
  end
end
