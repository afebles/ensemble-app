class AddSkillColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :level, :string
    add_column :users, :instrument, :string
    add_column :users, :genre, :date
  end
end
