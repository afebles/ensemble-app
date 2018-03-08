class RemoveColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :genre, :date
  end
end
