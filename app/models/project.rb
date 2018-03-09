class Project < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  has_many :participants, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true


end
