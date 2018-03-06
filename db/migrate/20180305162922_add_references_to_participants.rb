class AddReferencesToParticipants < ActiveRecord::Migration[5.1]
  def change
    add_reference :participants, :user, foreign_key: true
    add_reference :participants, :project, foreign_key: true
  end
end
