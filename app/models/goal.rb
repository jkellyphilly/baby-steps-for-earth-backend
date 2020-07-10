class Goal < ApplicationRecord

  has_many :goal_tags
  has_many :tags, through: :goal_tags

  validates :title, :content, presence: true

end
