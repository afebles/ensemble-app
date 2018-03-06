class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :projects

  validates :content, presence: true

end
