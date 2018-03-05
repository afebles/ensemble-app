class AddIndexToConnections < ActiveRecord::Migration[5.1]
  def change
    add_index :connections, :user_id
    add_index :connections, :second_user_id
  end
end
