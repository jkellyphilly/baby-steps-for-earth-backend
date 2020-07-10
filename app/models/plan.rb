class Plan < ApplicationRecord

  has_many :plan_goals
  has_many :goals, through: :plan_goals

  validates :username, presence: true
  validates :goals, length: {is: 7}

end
