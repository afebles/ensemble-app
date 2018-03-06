class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :about, :string
    add_column :users, :pro, :boolean
    add_column :users, :avatar, :string
    add_column :users, :media, :string
    # add_column :users,
    # add_column :users,
  end
end
