class Plan < ApplicationRecord

  has_many :plan_goals
  has_many :goals, through: :plan_goals

  validates :username, presence: true
  validates :goals, length: {is: 7}

  # Given a series of goals to be a part of this
  # plan, add all to this Plan's goals
  def associate_goals(goals)
    goals.each {|goal_id| self.goals << Goal.find(goal_id)}
    self.save
  end

end
