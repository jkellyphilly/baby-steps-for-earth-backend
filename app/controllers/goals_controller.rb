class GoalsController < ApplicationController

  def index
    if params[:tags] == "all"
      goals = Goal.all
    else
      goals = Goal.joins(:tags).where(tags: { content: params[:tags] })
    end
    render json: GoalSerializer.new(goals)
  end

  def create
    goal = Goal.create(goals_params)
    if goal.valid?
      render json: GoalSerializer.new(goal), status: :create
    else
      render json: { message: goal.errors.full_messages[0] }, status: :not_acceptable
    end
  end

  private

  def goals_params
    params.require(:goal).permit(:title, :content)
  end

end
