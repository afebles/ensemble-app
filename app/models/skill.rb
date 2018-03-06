class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :level
  belongs_to :instrument
  belongs_to :genre


  validates :level, presence: true
  validates :instrument, presence: true
  validates :genre, presence: true
  validates :user, presence: true
end


