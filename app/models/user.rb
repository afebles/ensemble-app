class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  mount_uploader :banner, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :connections, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :comments
  has_many :participants, dependent: :destroy

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :birth_date, presence: true

  has_friendship


end
