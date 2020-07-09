class GoalsController < ApplicationController

  def index
    goals = Goal.all
    render json: GoalSerializer.new(goals)
  end

end
