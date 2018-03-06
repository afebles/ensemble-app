class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :level
  belongs_to :instrument
  belongs_to :genre
end
