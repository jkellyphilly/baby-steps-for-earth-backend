class Goal < ApplicationRecord

  has_many :goal_tags
  has_many :tags, through: :goal_tags

  has_many :plan_goals
  has_many :plans, through: :plan_goals

  validates :title, :content, presence: true

end
