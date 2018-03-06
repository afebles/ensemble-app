class AddReferencesToSkills < ActiveRecord::Migration[5.1]
  def change
    add_reference :skills, :user, foreign_key: true
    add_reference :skills, :level, foreign_key: true
    add_reference :skills, :genre, foreign_key: true
    add_reference :skills, :instrument, foreign_key: true
  end
end
