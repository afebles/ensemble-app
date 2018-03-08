class AddGenreToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :genre, :string
  end
end
