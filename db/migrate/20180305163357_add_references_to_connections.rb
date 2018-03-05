class AddReferencesToConnections < ActiveRecord::Migration[5.1]
  def change
    add_column :connections, :user_id, :integer, index: true
    add_column :connections, :second_user_id, :integer, index: true

    add_foreign_key :connections, :users, column: :user_id, index: true
    add_foreign_key :connections, :users, column: :second_user_id, index: true
  end
end
