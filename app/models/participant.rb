class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :project, uniqueness: true
  validates :user, uniqueness: true

end
